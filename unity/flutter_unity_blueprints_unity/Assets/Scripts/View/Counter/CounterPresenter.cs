using System;
using FlutterUnityBlueprints.Data.Domain.Impl.Counter;
using FlutterUnityBlueprints.Data.Repository;
using Fub.Unity;
using Fub.Unity.Scenes;
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
        private readonly ISubscriber<PCounterAction> _counterActionSubscriber;
        private readonly CompositeDisposable _compositeDisposable = new();
        private readonly CounterStore _counterStore;

        public CounterPresenter(TMP_Text textMesh, ISubscriber<PCounterAction> counterActionSubscriber,
            CounterStore counterStore)
        {
            _textMesh = textMesh;
            _counterActionSubscriber = counterActionSubscriber;
            _counterStore = counterStore;
        }

        private void SetCount(long count)
        {
            _textMesh.text = count.ToString();
        }

        public void Start()
        {
            _counterActionSubscriber
                .Subscribe(action => _counterStore.Dispatch(action))
                .AddTo(_compositeDisposable);

            _counterStore.State.Subscribe(x =>
            {
                FlutterRepository.SendState(new PRootState()
                {
                    CounterState = x
                });
            }).AddTo(_compositeDisposable);

            _counterStore.State
                .Where(x => x != null)
                .Subscribe(x =>
                {
                    Debug.Log("Update count");
                    SetCount(x.Count);
                })
                .AddTo(_compositeDisposable);
        }

        public void Dispose()
        {
            _compositeDisposable?.Dispose();
        }
    }
}