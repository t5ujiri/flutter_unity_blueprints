using System;
using Cysharp.Threading.Tasks;
using Google.Protobuf.WellKnownTypes;
using Grpc.Core;
using Pbunity;
using UniRx;
using UnityEngine;
using UnityEngine.UI;
using Channel = Grpc.Core.Channel;

namespace FlutterUnityBlueprints.Application.Test
{
    public class SceneSwitcher : MonoBehaviour
    {
        public Button load;
        public Button unload;
        private readonly int _port = 50000;
        private Channel _channel;

        private async void Start()
        {
            var sceneServiceChannel = new Channel("localhost", _port, ChannelCredentials.Insecure);
            var sceneServiceStub = new SceneService.SceneServiceClient(sceneServiceChannel);

            load.BindToOnClick(_ =>
            {
                return UniTask.Create(async () =>
                {
                    var loadSceneResponse = await sceneServiceStub.LoadSceneAsync(new LoadSceneRequest
                    {
                        SceneName = "Counter",
                    }, Metadata.Empty);

                    Debug.Log(loadSceneResponse.Port);

                    _channel =
                        new Channel("localhost", (int) loadSceneResponse.Port, ChannelCredentials.Insecure);
                    var arCameraServiceStub = new CounterService.CounterServiceClient(_channel);
                    await arCameraServiceStub.IncrementAsync(new Empty());
                }).ToObservable().AsUnitObservable();
            });

            unload.BindToOnClick(_ =>
            {
                return UniTask.Create(async () =>
                {
                    if (_channel != null)
                    {
                        await _channel.ShutdownAsync();
                    }

                    _channel = null;

                    await sceneServiceStub.UnloadSceneAsync(new UnloadSceneRequest
                    {
                        SceneName = "Counter"
                    });
                }).ToObservable().AsUnitObservable();
            });
        }
    }
}