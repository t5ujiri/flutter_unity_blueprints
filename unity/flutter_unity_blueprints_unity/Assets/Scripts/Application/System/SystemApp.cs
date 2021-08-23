using System;
using System.Collections.Concurrent;
using System.Threading;
using Cysharp.Threading.Tasks;
using FlutterUnityBlueprints.View.System;
using Grpc.Core;
using Grpc.Core.Utils;
using MessagePipe;
using Pbunity;
using UniRx;
using UnityEngine;
using UnityEngine.SceneManagement;
using VContainer.Unity;
using Channel = Grpc.Core.Channel;
using Object = UnityEngine.Object;

namespace FlutterUnityBlueprints.Application.System
{
    public class SystemApp : IAsyncStartable, IDisposable
    {
        private readonly int _port;
        private readonly IAsyncPublisher<CounterResponse> _counterResponseStream;
        private readonly IAsyncSubscriber<JumperRequest> _jumperRequestStream;
        private readonly IAsyncPublisher<JumperResponse> _jumperResponseStream;
        private readonly SystemPanel _systemPanel;
        private Channel _channel;
        private UnityService.UnityServiceClient _client;

        public SystemApp(int port, SystemPanel systemPanel,
            IAsyncSubscriber<JumperRequest> jumperRequestStream, IAsyncPublisher<JumperResponse> jumperResponseStream,
            IAsyncPublisher<CounterResponse> counterResponseStream)
        {
            _port = port;
            _systemPanel = systemPanel;
            _jumperRequestStream = jumperRequestStream;
            _jumperResponseStream = jumperResponseStream;
            _counterResponseStream = counterResponseStream;
        }

        public void Dispose()
        {
            _channel.ShutdownAsync().AsUniTask().Forget();
        }

        public async UniTask StartAsync(CancellationToken cancellation)
        {
            _channel = new Channel("localhost", _port, ChannelCredentials.Insecure);
            _client = new UnityService.UnityServiceClient(_channel);

            await Connect(cancellation);

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
            await Connect(cancellationToken);
        }

        private async UniTask Connect(CancellationToken cancellation = default)
        {
            try
            {
                using var response = _client.Sync(cancellationToken: cancellation);

                var disposables = new CompositeDisposable();
                var queue = new ConcurrentQueue<AppRequest>();

                _jumperRequestStream.Subscribe(async (s, ct) =>
                {
                    queue.Enqueue(new AppRequest()
                    {
                        JumperRequest = s
                    });
                }).AddTo(disposables);

                UniTask.Run(async () =>
                {
                    while (!cancellation.IsCancellationRequested)
                    {
                        if (queue.TryDequeue(out var s))
                        {
                            await response.RequestStream.WriteAsync(s);
                        }
                    }
                }, cancellationToken: cancellation);

                await response.ResponseStream.ForEachAsync(async appState =>
                {
                    await NotifyAppState(appState, cancellation);
                });

                disposables.Dispose();
            }
            catch (RpcException rpcException)
            {
                if (rpcException.Status.StatusCode == StatusCode.OK) return;
                throw;
            }
        }

        private async UniTask NotifyAppState(AppResponse appState, CancellationToken cancellation = default)
        {
            await UniTask.SwitchToMainThread();
            switch (appState.StateCase)
            {
                // ensure counter scene then emit state
                case AppResponse.StateOneofCase.CounterResponse:
                    if (!SceneManager.GetSceneByName("Counter").isLoaded)
                    {
                        await UnloadAllAdditiveScenes();
                        using var scope = LifetimeScope.EnqueueParent(Object.FindObjectOfType<SystemScope>());
                        await SceneManager.LoadSceneAsync("Counter", LoadSceneMode.Additive);
                        _systemPanel.gameObject.SetActive(false);
                        Debug.Log("Counter scene loaded");
                    }

                    await _counterResponseStream.PublishAsync(appState.CounterResponse, cancellation);
                    break;
                case AppResponse.StateOneofCase.JumperResponse:
                    if (!SceneManager.GetSceneByName("Jumper").isLoaded)
                    {
                        await UnloadAllAdditiveScenes();
                        using var scope = LifetimeScope.EnqueueParent(Object.FindObjectOfType<SystemScope>());
                        await SceneManager.LoadSceneAsync("Jumper", LoadSceneMode.Additive);
                        _systemPanel.gameObject.SetActive(false);
                        Debug.Log("Jumper scene loaded");
                    }

                    await _jumperResponseStream.PublishAsync(appState.JumperResponse, cancellation);
                    break;
                case AppResponse.StateOneofCase.None:
                default:
                    await UnloadAllAdditiveScenes();
                    Debug.Log("all scene unloaded");

                    break;
            }
        }

        private async UniTask UnloadAllAdditiveScenes()
        {
            // Unload all scene
            for (var i = 0; i < SceneManager.sceneCount; i++)
            {
                var scene = SceneManager.GetSceneAt(i);
                if (scene.name != "System")
                {
                    await SceneManager.UnloadSceneAsync(scene);
                }
            }

            _systemPanel.gameObject.SetActive(true);
        }
    }
}