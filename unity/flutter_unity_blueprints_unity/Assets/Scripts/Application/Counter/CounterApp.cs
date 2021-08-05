using System;
using Cysharp.Threading.Tasks;
using FlutterUnityBlueprints.Application.System;
using Grpc.Core;
using MessagePipe;
using VContainer.Unity;

namespace FlutterUnityBlueprints.Application.Counter
{
    public class CounterApp : IStartable, IDisposable
    {
        private Server _server;
        private readonly CounterService.CounterServiceBase _counterService;
        private readonly int _port;

        public CounterApp(CounterService.CounterServiceBase counterService, int port)
        {
            _counterService = counterService;
            _port = port;
        }

        public void Start()
        {
            _server = new Server
            {
                Services =
                {
                    CounterService.BindService(_counterService)
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