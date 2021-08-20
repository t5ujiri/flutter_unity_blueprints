using System;
using System.Threading.Tasks;
using Cysharp.Threading.Tasks;
using Google.Protobuf.WellKnownTypes;
using Grpc.Core;
using Pbunity;
using UniRx;

namespace FlutterUnityBlueprints.Application.Stub
{
    public class StubServer : UnityService.UnityServiceBase
    {
        public override async Task Subscribe(Empty request, IServerStreamWriter<AppState> responseStream,
            ServerCallContext context)
        {
            await UniTask.SwitchToMainThread();
            await Observable.Interval(TimeSpan.FromSeconds(3)).Select(i => new AppState()
            {
                CounterState = new CounterState()
                {
                    Count = i
                }
            }).Take(10).ForEachAsync(state => { responseStream.WriteAsync(state); }).ToUniTask();
        }
    }
}