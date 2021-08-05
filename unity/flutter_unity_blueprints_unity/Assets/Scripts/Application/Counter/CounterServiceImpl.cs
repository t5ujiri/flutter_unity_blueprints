using System.Threading.Tasks;
using Cysharp.Threading.Tasks;
using Google.Protobuf.WellKnownTypes;
using Grpc.Core;

namespace FlutterUnityBlueprints.Application.Counter
{
    public class CounterServiceImpl : CounterService.CounterServiceBase
    {
        private readonly ICounterPresenter _counterPresenter;

        public CounterServiceImpl(ICounterPresenter counterPresenter)
        {
            _counterPresenter = counterPresenter;
        }

        public override async Task<Empty> Increment(Empty request, ServerCallContext context)
        {
            await UniTask.SwitchToMainThread();
            _counterPresenter.Increment();
            return new Empty();
        }
    }
}