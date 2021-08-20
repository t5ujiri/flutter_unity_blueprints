using System;
using System.Threading;
using Cysharp.Threading.Tasks;
using Grpc.Core;
using UnityEngine.SceneManagement;
using VContainer;
using VContainer.Unity;

namespace FlutterUnityBlueprints.Application.Stub
{
    public class StubScope : LifetimeScope
    {
        protected override void Configure(IContainerBuilder builder)
        {
            builder.RegisterEntryPoint<StubApp>();
        }

        public void LoadSystem()
        {
            if (!SceneManager.GetSceneByName("Scene").isLoaded)
                SceneManager.LoadScene("System", LoadSceneMode.Additive);
        }
    }

    public class StubApp : IAsyncStartable, IDisposable
    {
        private Server _server;

        public async UniTask StartAsync(CancellationToken cancellation)
        {
            _server = new Server()
            {
                Services = { Pbunity.UnityService.BindService(new StubServer()) },
                Ports =
                {
                    new ServerPort("localhost", 50000, ServerCredentials.Insecure)
                }
            };
            _server.Start();
        }

        public void Dispose()
        {
            _server.ShutdownAsync().AsUniTask().Forget();
        }
    }
}