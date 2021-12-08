using System.Collections.Concurrent;
using FlutterUnityBlueprints.Data.Repository;
using FlutterUnityBlueprints.View.System;
using Fub.Unity;
using MessagePipe;
using VContainer;
using VContainer.Unity;

namespace FlutterUnityBlueprints.Application.System
{
    public class SystemScope : LifetimeScope
    {
        protected override void Configure(IContainerBuilder builder)
        {
            builder.RegisterEntryPoint<FlutterRepository>().AsSelf();
            builder.RegisterEntryPoint<SystemApp>();
            builder.RegisterComponentInHierarchy<SystemPanel>();
            var option = builder.RegisterMessagePipe();
            builder.RegisterMessageBroker<LoadAppState>(option);
            builder.RegisterMessageBroker<CounterState>(option);
            builder.RegisterMessageBroker<JumperState>(option);
        }
    }
}