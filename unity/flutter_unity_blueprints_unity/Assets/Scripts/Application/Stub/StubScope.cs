using System;
using System.Threading;
using Cysharp.Threading.Tasks;
using FlutterUnityPlugin.Runtime;
using Google.Protobuf;
using Google.Protobuf.WellKnownTypes;
using Pbunity;
using UniRx;
using UnityEngine;
using UnityEngine.UI;
using VContainer;
using VContainer.Unity;

namespace FlutterUnityBlueprints.Application.Stub
{
    public class StubScope : LifetimeScope
    {
        protected override void Configure(IContainerBuilder builder)
        {
            builder.RegisterEntryPoint<StubApp>();
            builder.RegisterComponentInHierarchy<Button>();
        }
    }

    public class StubApp : IAsyncStartable, IDisposable
    {
        private readonly Button _button;

        public StubApp(Button button)
        {
            _button = button;
        }

        public async UniTask StartAsync(CancellationToken cancellation)
        {
            await _button.OnClickAsync(cancellation);
            TestLoadJumper();
            await UniTask.Delay(2000, cancellationToken: cancellation);
            await Observable.Interval(TimeSpan.FromSeconds(3)).Take(3).ForEachAsync(TestJumper)
                .ToUniTask(cancellationToken: cancellation);
            await UniTask.Delay(2000, cancellationToken: cancellation);
            TestLoadCounter();
            await UniTask.Delay(2000, cancellationToken: cancellation);
            await Observable.Interval(TimeSpan.FromSeconds(3)).Take(3).ForEachAsync(TestCounter)
                .ToUniTask(cancellationToken: cancellation);
            await UniTask.Delay(2000, cancellationToken: cancellation);
        }

        private void TestLoadCounter()
        {
            var appResponse = new AppResponse()
            {
                LoadAppResponse = new LoadAppResponse()
                {
                    AppName = "Counter"
                }
            };

            var message = new Message()
            {
                id = -1,
                data = Convert.ToBase64String(appResponse.ToByteArray())
            };

            FlutterMessageReceiver.Instance.OnReceive(message.ToJson());
        }

        private void TestCounter(long count)
        {
            var appResponse = new AppResponse()
            {
                CounterResponse = new CounterResponse()
                {
                    Count = count
                }
            };

            var message = new Message()
            {
                id = -1,
                data = Convert.ToBase64String(appResponse.ToByteArray())
            };

            FlutterMessageReceiver.Instance.OnReceive(message.ToJson());
        }

        private void TestLoadJumper()
        {
            var appResponse = new AppResponse()
            {
                LoadAppResponse = new LoadAppResponse()
                {
                    AppName = "Jumper"
                }
            };

            var message = new Message()
            {
                id = -1,
                data = Convert.ToBase64String(appResponse.ToByteArray())
            };

            FlutterMessageReceiver.Instance.OnReceive(message.ToJson());
        }

        private void TestJumper(long _)
        {
            var appResponse = new AppResponse()
            {
                JumperResponse = new JumperResponse()
                {
                    Controller = new JumperResponse.Types.JumperController()
                        { TriggerJump = Timestamp.FromDateTime(DateTime.Now.ToUniversalTime()), }
                }
            };

            var message = new Message()
            {
                id = -1,
                data = Convert.ToBase64String(appResponse.ToByteArray())
            };
            Debug.Log(message.ToJson());

            FlutterMessageReceiver.Instance.OnReceive(message.ToJson());
        }

        public void Dispose()
        {
        }
    }
}