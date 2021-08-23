using System;
using System.Threading;
using Cysharp.Threading.Tasks;
using MessagePipe;
using Pbunity;
using UniRx;
using VContainer.Unity;

namespace FlutterUnityBlueprints.Application.Counter
{
    public class CounterSceneModel : IStartable, IDisposable, ISceneModel<object, CounterResponse>
    {
        private readonly ReactiveProperty<CounterResponse> _state =
            new ReactiveProperty<CounterResponse>();

        private readonly IAsyncSubscriber<CounterResponse> _counterResponseStream;
        private readonly CompositeDisposable _compositeDisposable = new CompositeDisposable();

        public CounterSceneModel(IAsyncSubscriber<CounterResponse> counterResponseStream)
        {
            _counterResponseStream = counterResponseStream;
        }

        public UniTask Request(object newState)
        {
            throw new NotImplementedException();
        }

        public CounterResponse Value => _state.Value;
        public IReadOnlyReactiveProperty<CounterResponse> State => _state;

        public void Start()
        {
            _counterResponseStream.Subscribe(Handler);
        }

        private async UniTask Handler(CounterResponse s, CancellationToken ct)
        {
            _state.Value = s;
        }

        public void Dispose()
        {
            _state?.Dispose();
            _compositeDisposable?.Dispose();
        }
    }
}