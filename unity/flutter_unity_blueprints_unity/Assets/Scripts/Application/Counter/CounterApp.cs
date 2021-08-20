using System;
using System.Threading;
using Cysharp.Threading.Tasks;
using MessagePipe;
using Pbunity;
using VContainer.Unity;

namespace FlutterUnityBlueprints.Application.Counter
{
    public class CounterApp : IAsyncStartable, IDisposable
    {
        private readonly IAsyncSubscriber<CounterState> _counterStateSubscriber;
        private readonly ICounterPresenter _counterPresenter;
        private IDisposable _disposable;

        public CounterApp(IAsyncSubscriber<CounterState> counterStateSubscriber, ICounterPresenter counterPresenter)
        {
            _counterStateSubscriber = counterStateSubscriber;
            _counterPresenter = counterPresenter;
        }

        public async UniTask StartAsync(CancellationToken cancellation)
        {
            _disposable = _counterStateSubscriber.Subscribe(OnCounterStateChanged);
        }

        private async UniTask OnCounterStateChanged(CounterState state, CancellationToken ctx = default)
        {
            _counterPresenter.SetCount(Convert.ToInt32(state.Count));
        }

        public void Dispose()
        {
            _disposable.Dispose();
        }
    }
}