using System;
using System.Threading;
using Cysharp.Threading.Tasks;
using FlutterUnityBlueprints.View.System;
using Google.Protobuf.WellKnownTypes;
using Grpc.Core;
using Grpc.Core.Utils;
using MessagePipe;
using Pbunity;
using UnityEngine;
using UnityEngine.SceneManagement;
using VContainer.Unity;
using Channel = Grpc.Core.Channel;

namespace FlutterUnityBlueprints.Application.System
{
    public class SystemApp : IAsyncStartable, IDisposable
    {
        private readonly int _port;
        private readonly IAsyncPublisher<CounterState> _counterStatePublisher;
        private readonly SystemPanel _systemPanel;
        private Channel _channel;
        private UnityService.UnityServiceClient _client;

        public SystemApp(int port, IAsyncPublisher<CounterState> counterStatePublisher, SystemPanel systemPanel)
        {
            _port = port;
            _counterStatePublisher = counterStatePublisher;
            _systemPanel = systemPanel;
        }

        public void Dispose()
        {
            _channel.ShutdownAsync().AsUniTask().Forget();
        }

        public async UniTask StartAsync(CancellationToken cancellation)
        {
            _channel = new Channel("localhost", _port, ChannelCredentials.Insecure);
            _client = new UnityService.UnityServiceClient(_channel);

            await ConnectAsync(cancellation);

            UnityEngine.Application.focusChanged += OnApplicationOnfocusChanged;

            while (!cancellation.IsCancellationRequested)
            {
                var state = _channel.State;
                if (!await _channel.TryWaitForStateChangedAsync(state).ConfigureAwait(false)) continue;
                Debug.Log(state);
                if (state != ChannelState.Shutdown) continue;
                await Reconnect(cancellation);
            }
        }

        private async void OnApplicationOnfocusChanged(bool b)
        {
            if (!b)
            {
                return;
            }

            if (_channel.State != ChannelState.Shutdown) return;
            await Reconnect();
        }

        private async UniTask Reconnect(CancellationToken cancellationToken = default)
        {
            _client = new UnityService.UnityServiceClient(_channel);
            await ConnectAsync(cancellationToken);
        }

        private async UniTask ConnectAsync(CancellationToken cancellation = default)
        {
            using var response = _client.Subscribe(new Empty());

            await response.ResponseStream.ForEachAsync(async appState =>
            {
                Debug.Log("Handling app state");
                await HandleAppState(appState, cancellation);
            });
            Debug.Log("Connection completed");
        }

        private async UniTask HandleAppState(AppState appState, CancellationToken cancellation = default)
        {
            await UniTask.SwitchToMainThread();
            switch (appState.StateCase)
            {
                // ensure counter scene then emit state
                case AppState.StateOneofCase.CounterState:
                    if (!SceneManager.GetSceneByName("Counter").isLoaded)
                    {
                        await SceneManager.LoadSceneAsync("Counter", LoadSceneMode.Additive);
                        _systemPanel.gameObject.SetActive(false);
                        Debug.Log("Counter scene loaded");
                    }

                    await _counterStatePublisher.PublishAsync(appState.CounterState, cancellation);
                    break;

                // Unload all scene
                case AppState.StateOneofCase.None:
                default:
                    for (var i = 0; i < SceneManager.sceneCount; i++)
                    {
                        var scene = SceneManager.GetSceneAt(i);
                        if (scene.name != "System")
                        {
                            await SceneManager.UnloadSceneAsync(scene);
                        }
                    }

                    _systemPanel.gameObject.SetActive(true);
                    Debug.Log("all scene unloaded");

                    break;
            }
        }
    }
}