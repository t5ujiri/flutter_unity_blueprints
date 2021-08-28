using System.Collections.Concurrent;
using FlutterUnityBlueprints.Data.Repository;
using FlutterUnityBlueprints.View.System;
using Pbunity;
using VContainer;
using VContainer.Unity;

namespace FlutterUnityBlueprints.Application.System
{
    public class SystemScope : LifetimeScope
    {
        protected override void Configure(IContainerBuilder builder)
        {
            builder.RegisterEntryPoint<FlutterRepository>().AsSelf();
            builder.Register<ConcurrentQueue<AppResponse>>(Lifetime.Singleton);
            builder.RegisterEntryPoint<SystemApp>();
            builder.RegisterComponentInHierarchy<SystemPanel>();
        }
    }
}