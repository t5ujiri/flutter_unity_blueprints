using FlutterUnityBlueprints.View.Jumper;
using VContainer;
using VContainer.Unity;

namespace FlutterUnityBlueprints.Application.Jumper
{
    public class JumperScope : LifetimeScope
    {
        protected override void Configure(IContainerBuilder builder)
        {
            builder.RegisterEntryPoint<JumperPresenter>(Lifetime.Scoped);
            builder.RegisterComponentInHierarchy<JumpingCube>();
        }
    }
}