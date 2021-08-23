using System;
using Cysharp.Threading.Tasks;
using MessagePipe;
using Pbunity;
using UniRx;
using VContainer.Unity;

namespace FlutterUnityBlueprints.Application.Jumper
{
    public class JumperSceneModel : IStartable, IDisposable, ISceneModel<JumperRequest, JumperResponse>
    {
        private readonly ReactiveProperty<JumperResponse> _jumperState =
            new ReactiveProperty<JumperResponse>();

        private readonly IAsyncPublisher<JumperRequest> _requestStream;
        private readonly IAsyncSubscriber<JumperResponse> _responseStream;
        private readonly CompositeDisposable _compositeDisposable = new CompositeDisposable();

        public JumperResponse Value => _jumperState.Value.Clone();

        public IReadOnlyReactiveProperty<JumperResponse> State => _jumperState;

        public JumperSceneModel(IAsyncPublisher<JumperRequest> requestStream,
            IAsyncSubscriber<JumperResponse> responseStream)
        {
            _requestStream = requestStream;
            _responseStream = responseStream;
        }

        public async UniTask Request(JumperRequest newState)
        {
            await _requestStream.PublishAsync(newState);
        }

        public void Start()
        {
            _responseStream.Subscribe(async (s, ct) => { _jumperState.Value = s; }).AddTo(_compositeDisposable);
        }

        public void Dispose()
        {
            _compositeDisposable?.Dispose();
        }
    }
}