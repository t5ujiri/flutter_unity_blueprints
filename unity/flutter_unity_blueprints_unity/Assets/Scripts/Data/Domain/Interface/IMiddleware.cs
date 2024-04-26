using System;

namespace FlutterUnityBlueprints.Data.Domain.Interface
{
    public interface IMiddleware<in TStore, TAction>
    {
        void Invoke(TStore store, TAction action, Action<TAction> next);
    }
}