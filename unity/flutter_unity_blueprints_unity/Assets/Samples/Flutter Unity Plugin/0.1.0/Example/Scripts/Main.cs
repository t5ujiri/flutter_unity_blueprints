using FlutterUnityPlugin.Sample.Presentation.Presenter;
using FlutterUnityPlugin.Sample.Presentation.View;
using UnityEngine;
using VContainer;
using VContainer.Unity;

namespace FlutterUnityPlugin.Sample
{
    public class Main : LifetimeScope
    {
        [SerializeField] private CubeObjectView cubeObjectViewPrefab;
        
        protected override void Configure(IContainerBuilder builder)
        {
            builder.RegisterEntryPoint<SamplePresenter>(Lifetime.Scoped);
            builder.RegisterComponentInHierarchy<DebugMessageView>();
            builder.RegisterComponentInNewPrefab(cubeObjectViewPrefab, Lifetime.Scoped);
        }
    }
}