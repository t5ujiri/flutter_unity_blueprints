using System;
using Fub.Unity;
using MessagePipe;
using UniRx;
using VContainer.Unity;

namespace FlutterUnityBlueprints.View.Jumper
{
    public class JumperPresenter : IStartable, IDisposable
    {
        private readonly JumpingCube _jumpingCube;
        private readonly ISubscriber<JumperState> _jumperStateSubscriber;

        private readonly CompositeDisposable _compositeDisposable = new CompositeDisposable();

        public JumperPresenter(JumpingCube jumpingCube, ISubscriber<JumperState> jumperStateSubscriber)
        {
            _jumpingCube = jumpingCube;
            _jumperStateSubscriber = jumperStateSubscriber;
        }

        public void Start()
        {
            _jumpingCube.IsLanding.Subscribe(b =>
            {
                // _model.CanJump.Value = b;
            }).AddTo(_compositeDisposable);
        }

        public void Dispose()
        {
            _compositeDisposable.Dispose();
        }
    }
}