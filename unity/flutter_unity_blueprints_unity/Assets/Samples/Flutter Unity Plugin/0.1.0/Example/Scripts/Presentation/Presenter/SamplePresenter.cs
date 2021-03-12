using System;
using FlutterUnityPlugin.Runtime.Model;
using FlutterUnityPlugin.Sample.Presentation.View;
using UniRx;
using UniRx.Toolkit;
using UnityEngine;
using VContainer.Unity;
using Object = UnityEngine.Object;
using Random = System.Random;

namespace FlutterUnityPlugin.Sample.Presentation.Presenter
{
    // ReSharper disable once ClassNeverInstantiated.Global
    public class SamplePresenter : IStartable, IDisposable
    {
        private readonly DebugMessageView _debugMessageView;
        private readonly CubeObjectView _cubeObjectView;
        private readonly CompositeDisposable _disposables = new CompositeDisposable();

        public SamplePresenter(DebugMessageView debugMessageView, CubeObjectView cubeObjectView)
        {
            _debugMessageView = debugMessageView;
            _cubeObjectView = cubeObjectView;
        }

        public void Start()
        {
            var rand = new Random();
            // handle flutter message
            MessageBroker.Default.Receive<Message>().Subscribe(m =>
                {
                    _debugMessageView.messageTMP.text = m.data;
                    Object.Instantiate(_cubeObjectView,
                        new Vector3(2f + rand.Next(-100, 100) / 100f, 1f + rand.Next(-100, 100) / 100f,
                            rand.Next(-100, 100) / 100f),
                        Quaternion.identity);
                })
                .AddTo(_disposables);
        }

        public void Dispose()
        {
            _disposables?.Dispose();
        }
    }
}