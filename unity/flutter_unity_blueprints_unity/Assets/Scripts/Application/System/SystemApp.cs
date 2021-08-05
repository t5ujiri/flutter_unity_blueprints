using System;
using Cysharp.Threading.Tasks;
using Grpc.Core;
using Pbunity;
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
        }

        public void Dispose()
        {
            _server?.KillAsync().AsUniTask().Forget();
        }
    }
}