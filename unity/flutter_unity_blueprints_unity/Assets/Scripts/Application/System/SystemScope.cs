using FlutterUnityBlueprints.Application.Counter;
using FlutterUnityBlueprints.Application.Jumper;
using FlutterUnityBlueprints.View.System;
using MessagePipe;
using Pbunity;
using VContainer;
using VContainer.Unity;

namespace FlutterUnityBlueprints.Application.System
{
    public class SystemScope : LifetimeScope
    {
        protected override void Configure(IContainerBuilder builder)
        {
            var option = builder.RegisterMessagePipe();
            builder.RegisterMessageBroker<CounterResponse>(option);
            builder.RegisterMessageBroker<JumperRequest>(option);
            builder.RegisterMessageBroker<JumperResponse>(option);
            builder.RegisterEntryPoint<SystemApp>().WithParameter(50000);
            builder.RegisterComponentInHierarchy<SystemPanel>();
            builder.Register<JumperSceneModel>(Lifetime.Singleton).AsImplementedInterfaces().AsSelf();
            builder.Register<CounterSceneModel>(Lifetime.Singleton).AsImplementedInterfaces().AsSelf();
        }
    }
}