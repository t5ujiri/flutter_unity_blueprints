using System;
using Fub.Unity;
using Fub.Unity.Scenes;
using MessagePipe;
using VContainer.Unity;
#if !UNITY_EDITOR
using FlutterUnityIntegration;
using Google.Protobuf;
#endif

namespace FlutterUnityBlueprints.Data.Repository
{
    // ReSharper disable once ClassNeverInstantiated.Global
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

        private void OnMessageFromFlutter(PRootAction message)
        {
            switch (message.ActionCase)
            {
                case PRootAction.ActionOneofCase.None:
                    break;
                case PRootAction.ActionOneofCase.CounterAction:
                    _counterActionPublisher.Publish(message.CounterAction);
                    break;
                case PRootAction.ActionOneofCase.LoadAppAction:
                    _loadAppActionPublisher.PublishAsync(message.LoadAppAction);
                    break;
                default:
                    throw new ArgumentOutOfRangeException();
            }
        }

        public static void SendState(PRootState state)
        {
#if !UNITY_EDITOR
            UnityMessageManager.Instance.SendMessageToFlutter(Convert.ToBase64String(state.ToByteArray()));
#endif
        }
    }
}