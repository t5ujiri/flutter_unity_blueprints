using System.Collections.Generic;
using UniRx;

namespace FlutterUnityBlueprints.Data.Domain.Interface
{
    public abstract class StoreBase<TState, TAction> : IStore<TState, TAction>
    {
        public IReadOnlyReactiveProperty<TState> State { get; }
        public List<IMiddleware<IStore<TState, TAction>, TAction>> Middlewares { get; } = new();
        public IReducer<TState, TAction> Reducer { get; }

        private readonly ReactiveProperty<TState> _state;

        protected StoreBase(TState initialState, IReducer<TState, TAction> reducer)
        {
            Reducer = reducer;
            _state = new ReactiveProperty<TState>(initialState);
            State = _state;
        }

        public void Dispatch(TAction action)
        {
            ExecuteMiddlewares(action, 0);
        }

        private void ExecuteMiddlewares(TAction action, int currentIndex)
        {
            if (currentIndex < Middlewares.Count)
            {
                var nextMiddleware = Middlewares[currentIndex];
                nextMiddleware.Invoke(this, action, (next) => ExecuteMiddlewares(next, currentIndex + 1));
            }
            else
            {
                // 全てのミドルウェアを通過したら、最終的にレデューサーを呼び出す
                _state.SetValueAndForceNotify(Reducer.Reduce(_state.Value, action));
            }
        }
    }
}