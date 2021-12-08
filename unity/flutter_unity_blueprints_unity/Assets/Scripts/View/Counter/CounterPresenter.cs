using System;
using Fub.Unity;
using MessagePipe;
using TMPro;
using UniRx;
using UnityEngine;
using VContainer.Unity;

namespace FlutterUnityBlueprints.View.Counter
{
    public class CounterPresenter : IStartable, IDisposable
    {
        private readonly TMP_Text _textMesh;
        private readonly ISubscriber<CounterState> _counterStateSubscriber;
        private readonly CompositeDisposable _compositeDisposable = new();

        public CounterPresenter(TMP_Text textMesh, ISubscriber<CounterState> counterStateSubscriber)
        {
            _textMesh = textMesh;
            _counterStateSubscriber = counterStateSubscriber;
        }

        private void SetCount(long count)
        {
            _textMesh.text = count.ToString();
        }

        public void Start()
        {
            _counterStateSubscriber.AsObservable()
                .Where(s => s != null)
                .Select(s => s.Count)
                .DistinctUntilChanged()
                .Subscribe(s =>
                {
                    Debug.Log("Update count");
                    SetCount(s);
                })
                .AddTo(_compositeDisposable);
        }

        public void Dispose()
        {
            _compositeDisposable?.Dispose();
        }
    }
}