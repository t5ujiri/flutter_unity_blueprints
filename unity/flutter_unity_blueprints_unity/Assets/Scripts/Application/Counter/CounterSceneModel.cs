using System;
using System.Threading;
using Cysharp.Threading.Tasks;
using Cysharp.Threading.Tasks.Linq;
using FlutterUnityBlueprints.Data.Repository;
using MessagePipe;
using Pbunity;
using UniRx;
using VContainer.Unity;

namespace FlutterUnityBlueprints.Application.Counter
{
    public class CounterSceneModel : IStartable, IDisposable
    {
        private readonly IntReactiveProperty _state =
            new IntReactiveProperty();

        private readonly CompositeDisposable _compositeDisposable = new CompositeDisposable();
        private readonly FlutterRepository _flutterRepository;

        public CounterSceneModel(FlutterRepository flutterRepository)
        {
            _flutterRepository = flutterRepository;
        }

        public IReadOnlyReactiveProperty<int> State => _state;

        public void Start()
        {
            _flutterRepository.CounterResponseStream
                .Subscribe(r =>
                {
                    if (r == default) return;
                    _state.Value = (int)r.Count;
                }).AddTo(_compositeDisposable);
        }

        public void Dispose()
        {
            _state?.Dispose();
            _compositeDisposable?.Dispose();
        }
    }
}