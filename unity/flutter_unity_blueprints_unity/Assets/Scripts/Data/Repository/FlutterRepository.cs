using System;
using Cysharp.Threading.Tasks;
using FlutterUnityPlugin.Runtime;
using Fub.Unity;
using Google.Protobuf;
using MessagePipe;
using VContainer.Unity;

namespace FlutterUnityBlueprints.Data.Repository
{
    public class FlutterRepository : IStartable
    {
        private readonly IAsyncPublisher<LoadAppState> _loadAppStatePublisher;
        private readonly IPublisher<CounterState> _counterStatePublisher;
        private readonly IPublisher<JumperState> _jumperStatePublisher;

        public FlutterRepository(IAsyncPublisher<LoadAppState> loadAppStatePublisher,
            IPublisher<CounterState> counterStatePublisher, IPublisher<JumperState> jumperStatePublisher)
        {
            _loadAppStatePublisher = loadAppStatePublisher;
            _counterStatePublisher = counterStatePublisher;
            _jumperStatePublisher = jumperStatePublisher;
        }

        public void Start()
        {
            FlutterMessageReceiver.Instance.OnMessageFromFlutter += OnMessageFromFlutter;
        }

        private void OnMessageFromFlutter(Message message)
        {
            var appState = new AppState();
            appState.MergeFrom(Convert.FromBase64String(message.data));
            switch (appState.StateCase)
            {
                case AppState.StateOneofCase.None:
                    break;
                case AppState.StateOneofCase.LoadAppState:
                    _loadAppStatePublisher.PublishAsync(appState.LoadAppState);
                    break;
                case AppState.StateOneofCase.CounterState:
                    _counterStatePublisher.Publish(appState.CounterState);
                    break;
                case AppState.StateOneofCase.JumperState:
                    _jumperStatePublisher.Publish(appState.JumperState);
                    break;
                default:
                    throw new ArgumentOutOfRangeException();
            }
        }

        public static void DispatchAction(AppAction action)
        {
            Messages.Send(new Message()
            {
                id = -1,
                data = Convert.ToBase64String(action.ToByteArray())
            });
        }
    }
}