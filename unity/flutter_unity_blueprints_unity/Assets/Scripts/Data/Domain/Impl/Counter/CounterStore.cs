using FlutterUnityBlueprints.Data.Domain.Interface;
using Fub.Unity;
using Fub.Unity.Scenes;

namespace FlutterUnityBlueprints.Data.Domain.Impl.Counter
{
    public class CounterStore : StoreBase<PCounterState, PCounterAction>
    {
        public CounterStore(PCounterState initialState, IReducer<PCounterState, PCounterAction> reducer) : base(
            initialState, reducer)
        {
        }
    }
}