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
            builder.RegisterMessageBroker<CounterState>(option);
            builder.RegisterEntryPoint<SystemApp>().WithParameter(50000);
            builder.RegisterComponentInHierarchy<SystemPanel>();
        }
    }
}