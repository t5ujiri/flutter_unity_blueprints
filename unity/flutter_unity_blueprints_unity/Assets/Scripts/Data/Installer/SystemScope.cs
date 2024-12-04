using FlutterUnityBlueprints.Data.Repository;
using FlutterUnityBlueprints.View.System;
using Fub.Unity;
using Fub.Unity.Scenes;
using MessagePipe;
using VContainer;
using VContainer.Unity;

namespace FlutterUnityBlueprints.Data.Installer
{
    public class SystemScope : LifetimeScope
    {
        protected override void Configure(IContainerBuilder builder)
        {
            builder.RegisterEntryPoint<FlutterRepository>().AsSelf();
            builder.RegisterEntryPoint<App>();
            builder.RegisterComponentInHierarchy<SystemPanel>();
            var option = builder.RegisterMessagePipe();

            builder.RegisterMessageBroker<PLoadAppAction>(option);
            builder.RegisterMessageBroker<PCounterAction>(option);
            builder.RegisterMessageBroker<PLoadAppState>(option);
            builder.RegisterMessageBroker<PCounterState>(option);
        }
    }
}