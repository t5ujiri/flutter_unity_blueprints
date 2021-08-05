using System;
using Cysharp.Threading.Tasks;
using FlutterUnityPlugin.Runtime;
using Grpc.Core;
using Pbunity;
using UnityEngine;
using VContainer.Unity;

namespace FlutterUnityBlueprints.Application.System
{
    public class SystemApp : IStartable, IDisposable
    {
        private Server _server;
        private readonly int _port;
        private readonly SceneService.SceneServiceBase _sceneService;

        public SystemApp(SceneService.SceneServiceBase sceneService, int port)
        {
            _sceneService = sceneService;
            _port = port;
        }

        public void Start()
        {
            _server = new Server()
            {
                Services =
                {
                    SceneService.BindService(_sceneService)
                }
            };

            _server.Ports.Add(new ServerPort("localhost", _port, ServerCredentials.Insecure));
            _server.Start();
            
            Messages.Send(new Message()
            {
                id = -1,
                data = JsonUtility.ToJson(new UnityInitializedEvent(_port))
            });
        }

        public void Dispose()
        {
            _server?.KillAsync().AsUniTask().Forget();
        }

        [Serializable]
        public class UnityInitializedEvent
        {
            public UnityInitializedEvent(int port)
            {
                this.port = port;
            }

            public string eventName = "UNITY_INITIALIZED";
            public int port;
        }
    }
}