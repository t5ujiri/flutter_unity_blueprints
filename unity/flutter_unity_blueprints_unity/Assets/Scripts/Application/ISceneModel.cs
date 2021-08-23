using Cysharp.Threading.Tasks;
using Pbunity;
using UniRx;

namespace FlutterUnityBlueprints.Application
{
    public interface ISceneModel<T, U>
    {
        UniTask Request(T newState);
        U Value { get; }
        IReadOnlyReactiveProperty<U> State { get; }
    }
}