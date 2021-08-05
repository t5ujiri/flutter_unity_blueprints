using MessagePipe;
using Pbunity;
using UnityEngine;
using VContainer;
using VContainer.Unity;

namespace FlutterUnityBlueprints.Application.System
{
    public class SystemScope : LifetimeScope
    {
        protected override void Configure(IContainerBuilder builder)
        {
            var option = builder.RegisterMessagePipe();
            builder.RegisterMessageBroker<SceneInitializedEvent>(option);
            builder.RegisterEntryPoint<SystemApp>().WithParameter(Constants.SceneServicePort);
            builder.Register<SceneService.SceneServiceBase, SceneServiceImpl>(Lifetime.Singleton)
                .WithParameter(Constants.PortMap);
            builder.RegisterComponentInHierarchy<Canvas>();
        }
    }
}