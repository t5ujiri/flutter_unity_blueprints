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
        public override async Task Sync(IAsyncStreamReader<AppRequest> requestStream,
            IServerStreamWriter<AppResponse> responseStream, ServerCallContext context)
        {
            await UniTask.SwitchToMainThread();
            await Observable.Interval(TimeSpan.FromSeconds(3)).Take(10).ForEachAsync(async state =>
            {
                await responseStream.WriteAsync(new AppResponse()
                {
                    JumperResponse = new JumperResponse()
                    {
                        Controller = new JumperResponse.Types.JumperController()
                        {
                            TriggerJump = Timestamp.FromDateTime(DateTime.Now.ToUniversalTime()),
                        }
                    }
                });
            }).ToUniTask(cancellationToken: context.CancellationToken);
        }
    }
}