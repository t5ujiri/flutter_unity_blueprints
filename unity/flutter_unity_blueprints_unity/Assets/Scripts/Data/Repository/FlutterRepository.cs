using System;
using Cysharp.Threading.Tasks;
using FlutterUnityPlugin.Runtime;
using Google.Protobuf;
using Pbunity;
using VContainer.Unity;

namespace FlutterUnityBlueprints.Data.Repository
{
    public class FlutterRepository : IStartable
    {
        private readonly AsyncReactiveProperty<LoadAppResponse> _loadAppStream =
            new AsyncReactiveProperty<LoadAppResponse>(default);

        private readonly AsyncReactiveProperty<JumperResponse> _jumperResponseStream =
            new AsyncReactiveProperty<JumperResponse>(default);

        private readonly AsyncReactiveProperty<CounterResponse> _counterResponseStream =
            new AsyncReactiveProperty<CounterResponse>(default);

        public IUniTaskAsyncEnumerable<LoadAppResponse> LoadAppStream => _loadAppStream;
        public IUniTaskAsyncEnumerable<JumperResponse> JumperResponseStream => _jumperResponseStream;
        public IUniTaskAsyncEnumerable<CounterResponse> CounterResponseStream => _counterResponseStream;

        public void Start()
        {
            FlutterMessageReceiver.Instance.OnMessageFromFlutter += OnMessageFromFlutter;
        }

        private void OnMessageFromFlutter(Message message)
        {
            var appResponse = new AppResponse();
            appResponse.MergeFrom(Convert.FromBase64String(message.data));
            switch (appResponse.StateCase)
            {
                case AppResponse.StateOneofCase.None:
                    break;
                case AppResponse.StateOneofCase.LoadAppResponse:
                    _loadAppStream.Value = appResponse.LoadAppResponse;
                    break;
                case AppResponse.StateOneofCase.CounterResponse:
                    _counterResponseStream.Value = appResponse.CounterResponse;
                    break;
                case AppResponse.StateOneofCase.JumperResponse:
                    _jumperResponseStream.Value = appResponse.JumperResponse;
                    break;
                default:
                    throw new ArgumentOutOfRangeException();
            }
        }

        public static void SendRequest(AppRequest r)
        {
            Messages.Send(new Message()
            {
                id = -1,
                data = Convert.ToBase64String(r.ToByteArray())
            });
        }
    }
}