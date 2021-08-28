using System;
using FlutterUnityBlueprints.Application.Counter;
using TMPro;
using UniRx;
using UnityEngine;
using VContainer.Unity;

namespace FlutterUnityBlueprints.View.Counter
{
    public class CounterPresenter : IStartable, IDisposable
    {
        private int _count;
        private readonly TMP_Text _textMesh;
        private readonly CounterSceneModel _sceneModel;
        private readonly CompositeDisposable _compositeDisposable = new CompositeDisposable();

        public CounterPresenter(TMP_Text textMesh,
            CounterSceneModel sceneModel1)
        {
            _textMesh = textMesh;
            _sceneModel = sceneModel1;
        }

        private void SetCount(int count)
        {
            _count = count;
            _textMesh.text = _count.ToString();
        }

        public void Start()
        {
            _sceneModel.State
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