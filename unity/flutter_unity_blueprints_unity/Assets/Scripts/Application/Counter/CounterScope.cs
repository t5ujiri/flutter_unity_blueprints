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
            builder.RegisterEntryPoint<CounterApp>().WithParameter(
                Constants.PortMap["Counter"]);
            builder.Register<CounterService.CounterServiceBase, CounterServiceImpl>(Lifetime.Scoped);
            builder.Register<CounterPresenter>(Lifetime.Scoped).AsImplementedInterfaces();
            builder.RegisterComponentInHierarchy<TMP_Text>();
        }
    }
}