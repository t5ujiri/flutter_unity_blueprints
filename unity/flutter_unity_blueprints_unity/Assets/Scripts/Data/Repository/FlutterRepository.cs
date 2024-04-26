using System;
using Fub.Unity;
using MessagePipe;
using VContainer.Unity;
#if !UNITY_EDITOR
using FlutterUnityIntegration;
using Google.Protobuf;
#endif

namespace FlutterUnityBlueprints.Data.Repository
{
    public class FlutterRepository : IStartable
    {
        private readonly IAsyncPublisher<PLoadAppAction> _loadAppActionPublisher;
        private readonly IPublisher<PCounterAction> _counterActionPublisher;

        public FlutterRepository(IAsyncPublisher<PLoadAppAction> loadAppActionPublisher,
            IPublisher<PCounterAction> counterActionPublisher)
        {
            _loadAppActionPublisher = loadAppActionPublisher;
            _counterActionPublisher = counterActionPublisher;
        }

        public void Start()
        {
            FlutterMessageReceiver.Instance.OnAppActionFromFlutter += OnMessageFromFlutter;
        }

        private void OnMessageFromFlutter(PAppAction message)
        {
            switch (message.ActionCase)
            {
                case PAppAction.ActionOneofCase.None:
                    break;
                case PAppAction.ActionOneofCase.CounterAction:
                    _counterActionPublisher.Publish(message.CounterAction);
                    break;
                case PAppAction.ActionOneofCase.LoadAppAction:
                    _loadAppActionPublisher.PublishAsync(message.LoadAppAction);
                    break;
                default:
                    throw new ArgumentOutOfRangeException();
            }
        }

        public static void SendState(PAppState state)
        {
#if !UNITY_EDITOR
            UnityMessageManager.Instance.SendMessageToFlutter(Convert.ToBase64String(state.ToByteArray()));
#endif
        }
    }
}