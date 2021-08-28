using System;
using Cysharp.Threading.Tasks.Linq;
using FlutterUnityBlueprints.Data.Repository;
using Google.Protobuf.WellKnownTypes;
using Pbunity;
using UniRx;
using VContainer.Unity;

namespace FlutterUnityBlueprints.Application.Jumper
{
    public class JumperSceneModel : IStartable, IDisposable
    {
        public readonly IntReactiveProperty JumpTrigger = new IntReactiveProperty();

        private readonly CompositeDisposable _compositeDisposable = new CompositeDisposable();
        private readonly FlutterRepository _flutterRepository;
        private Timestamp _triggerJump;

        public JumperSceneModel(FlutterRepository flutterRepository)
        {
            _flutterRepository = flutterRepository;
        }

        public readonly BoolReactiveProperty CanJump = new BoolReactiveProperty();

        public readonly Vector3ReactiveProperty Position = new Vector3ReactiveProperty();

        public void Start()
        {
            _flutterRepository.JumperResponseStream
                .Subscribe(r =>
                {
                    if (r == default) return;
                    if (r.Controller == null || r.Controller.TriggerJump == default)
                    {
                        _triggerJump = default;
                        return;
                    }

                    if (_triggerJump == default && r.Controller.TriggerJump != default)
                    {
                        _triggerJump = r.Controller.TriggerJump;
                        JumpTrigger.Value += 1;
                    }
                    else if (_triggerJump != default && _triggerJump < r.Controller.TriggerJump)
                    {
                        _triggerJump = r.Controller.TriggerJump;
                        JumpTrigger.Value += 1;
                    }
                })
                .AddTo(_compositeDisposable);

            CanJump.Subscribe(b =>
            {
                _flutterRepository.SendRequest(new AppRequest()
                {
                    JumperRequest = new JumperRequest()
                    {
                        CanJump = b,
                        Position = new Vector3()
                        {
                            X = Position.Value.x,
                            Y = Position.Value.y,
                            Z = Position.Value.z,
                        }
                    }
                });
            }).AddTo(_compositeDisposable);

            Position.Select(p => new Vector3()
                {
                    X = Position.Value.x,
                    Y = Position.Value.y,
                    Z = Position.Value.z,
                })
                .Subscribe(p =>
                {
                    _flutterRepository.SendRequest(new AppRequest()
                    {
                        JumperRequest = new JumperRequest()
                        {
                            CanJump = CanJump.Value,
                            Position = p,
                        }
                    });
                }).AddTo(_compositeDisposable);
        }

        public void Dispose()
        {
            _compositeDisposable?.Dispose();
        }
    }
}