using System;
using System.Threading;
using Cysharp.Threading.Tasks;
using Cysharp.Threading.Tasks.Linq;
using FlutterUnityBlueprints.Application;
using FlutterUnityBlueprints.Application.Counter;
using Pbunity;
using TMPro;
using UniRx;
using VContainer.Unity;

namespace FlutterUnityBlueprints.View.Counter
{
    public class CounterPresenter : IAsyncStartable, IDisposable
    {
        private int _count;
        private readonly TMP_Text _textMesh;
        private readonly ISceneModel<object, CounterResponse> _sceneModel;
        private readonly CompositeDisposable _compositeDisposable = new CompositeDisposable();

        public CounterPresenter(TMP_Text textMesh, ISceneModel<object, CounterResponse> sceneModel)
        {
            _textMesh = textMesh;
            _sceneModel = sceneModel;
        }

        public void SetCount(int count)
        {
            _count = count;
            _textMesh.text = _count.ToString();
        }

        public async UniTask StartAsync(CancellationToken cancellation)
        {
            _sceneModel.State.Subscribe(s => { SetCount((int)s.Count); }).AddTo(_compositeDisposable);
        }

        public void Dispose()
        {
            _compositeDisposable?.Dispose();
        }
    }
}