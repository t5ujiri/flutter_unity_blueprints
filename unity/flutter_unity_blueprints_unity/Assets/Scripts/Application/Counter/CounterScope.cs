using FlutterUnityBlueprints.View.Counter;
using TMPro;
using VContainer;
using VContainer.Unity;

namespace FlutterUnityBlueprints.Application.Counter
{
    public class CounterScope : LifetimeScope
    {
        protected override void Configure(IContainerBuilder builder)
        {
            builder.RegisterEntryPoint<CounterApp>();
            builder.Register<CounterPresenter>(Lifetime.Scoped).AsImplementedInterfaces();
            builder.RegisterComponentInHierarchy<TMP_Text>();
        }
    }
}