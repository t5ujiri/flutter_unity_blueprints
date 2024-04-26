using FlutterUnityBlueprints.Data.Domain.Impl.Counter;
using FlutterUnityBlueprints.View.Counter;
using Fub.Unity;
using TMPro;
using VContainer;
using VContainer.Unity;

namespace FlutterUnityBlueprints.Application.Counter
{
    public class CounterScope : LifetimeScope
    {
        protected override void Configure(IContainerBuilder builder)
        {
            builder.RegisterComponentInHierarchy<TMP_Text>();
            builder.RegisterEntryPoint<CounterPresenter>(Lifetime.Scoped);
            builder.RegisterInstance(new CounterStore(new PCounterState(), new CounterReducer()));
        }
    }
}