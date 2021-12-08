using System;
using FlutterUnityBlueprints.Data.Repository;
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

        private readonly CompositeDisposable _compositeDisposable = new();

        public JumperPresenter(JumpingCube jumpingCube, ISubscriber<JumperState> jumperStateSubscriber)
        {
            _jumpingCube = jumpingCube;
            _jumperStateSubscriber = jumperStateSubscriber;
        }

        public void Start()
        {
            _jumpingCube.IsLanding.Subscribe(b =>
            {
                FlutterRepository.DispatchAction(JumperActionCreator.ToggleCabJump(b));
            }).AddTo(_compositeDisposable);

            _jumperStateSubscriber.AsObservable()
                .Where(s => s != null)
                .Select(s => s.TriggerJump)
                .DistinctUntilChanged()
                .Skip(1)
                .Subscribe(_ => _jumpingCube.Jump())
                .AddTo(_compositeDisposable);
        }

        public void Dispose()
        {
            _compositeDisposable.Dispose();
        }
    }
}