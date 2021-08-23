using System;
using System.Threading;
using Cysharp.Threading.Tasks;
using FlutterUnityBlueprints.Application;
using FlutterUnityBlueprints.Application.Jumper;
using Google.Protobuf.WellKnownTypes;
using Pbunity;
using UniRx;
using VContainer.Unity;

namespace FlutterUnityBlueprints.View.Jumper
{
    public class JumperPresenter : IAsyncStartable, IDisposable
    {
        private readonly JumpingCube _jumpingCube;
        private readonly ISceneModel<JumperRequest, JumperResponse> _model;
        private readonly CompositeDisposable _compositeDisposable = new CompositeDisposable();
        private Timestamp _triggerJump;

        public JumperPresenter(JumpingCube jumpingCube, JumperSceneModel model)
        {
            _jumpingCube = jumpingCube;
            _model = model;
        }

        public async UniTask StartAsync(CancellationToken cancellation)
        {
            _model.State.SkipLatestValueOnSubscribe().Subscribe(s =>
            {
                if (s.Controller == null || s.Controller.TriggerJump == default)
                {
                    _triggerJump = default;
                    return;
                }

                if (_triggerJump == default && s.Controller.TriggerJump != default)
                {
                    _triggerJump = s.Controller.TriggerJump;
                    _jumpingCube.Jump();
                }
                else if (_triggerJump != default && _triggerJump < s.Controller.TriggerJump)
                {
                    _triggerJump = s.Controller.TriggerJump;
                    _jumpingCube.Jump();
                }
            }).AddTo(_compositeDisposable);

            _jumpingCube.IsLanding.Subscribe(NotifyCanJump).AddTo(_compositeDisposable);

            Observable.Interval(TimeSpan.FromMilliseconds(200))
                .Select(i => new Pbunity.Vector3()
                {
                    X = _jumpingCube.transform.position.x,
                    Y = _jumpingCube.transform.position.y,
                    Z = _jumpingCube.transform.position.z
                }).DistinctUntilChanged().Subscribe(p =>
                {
                    _model.Request(new JumperRequest()
                    {
                        CanJump = _jumpingCube.IsLanding.Value,
                        Position = p,
                    });
                }).AddTo(_compositeDisposable);
        }

        private void NotifyCanJump(bool b)
        {
            _model.Request(new JumperRequest()
            {
                CanJump = _jumpingCube.IsLanding.Value,
                Position = new Pbunity.Vector3()
                {
                    X = _jumpingCube.transform.position.x,
                    Y = _jumpingCube.transform.position.y,
                    Z = _jumpingCube.transform.position.z
                },
            });
        }

        public void Dispose()
        {
            _compositeDisposable.Dispose();
        }
    }
}