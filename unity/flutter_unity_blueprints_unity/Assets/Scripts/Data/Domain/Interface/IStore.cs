using System.Collections.Generic;
using UniRx;

namespace FlutterUnityBlueprints.Data.Domain.Interface
{
    public interface IStore<TState, TAction>
    {
        IReadOnlyReactiveProperty<TState> State { get; }
        public List<IMiddleware<IStore<TState, TAction>, TAction>> Middlewares { get; }
        IReducer<TState, TAction> Reducer { get; }
        void Dispatch(TAction action);
    }
}