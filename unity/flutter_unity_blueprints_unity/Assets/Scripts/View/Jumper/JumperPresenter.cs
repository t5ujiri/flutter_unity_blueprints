using System;
using FlutterUnityBlueprints.Application.Jumper;
using UniRx;
using VContainer.Unity;

namespace FlutterUnityBlueprints.View.Jumper
{
    public class JumperPresenter : IStartable, IDisposable
    {
        private readonly JumpingCube _jumpingCube;
        private readonly JumperSceneModel _model;
        private readonly CompositeDisposable _compositeDisposable = new CompositeDisposable();

        public JumperPresenter(JumpingCube jumpingCube, JumperSceneModel model)
        {
            _jumpingCube = jumpingCube;
            _model = model;
        }

        public void Start()
        {
            _model.JumpTrigger
                .SkipLatestValueOnSubscribe()
                .Subscribe(_ => _jumpingCube.Jump()).AddTo(_compositeDisposable);

            _jumpingCube.IsLanding.Subscribe(b => _model.CanJump.Value = b).AddTo(_compositeDisposable);

            Observable.Interval(TimeSpan.FromMilliseconds(100))
                .Select(i => _jumpingCube.transform.position).DistinctUntilChanged()
                .Subscribe(p => _model.Position.Value = p).AddTo(_compositeDisposable);
        }

        public void Dispose()
        {
            _compositeDisposable.Dispose();
        }
    }
}