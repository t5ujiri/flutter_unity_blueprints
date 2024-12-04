using System;
using FlutterUnityBlueprints.Data.Domain.Interface;
using Fub.Unity.Scenes;

namespace FlutterUnityBlueprints.Data.Domain.Impl.Counter
{
    public class CounterReducer : IReducer<PCounterState, PCounterAction>
    {
        public PCounterState Reduce(PCounterState state, PCounterAction action)
        {
            switch (action.ActionCase)
            {
                case PCounterAction.ActionOneofCase.None:
                case PCounterAction.ActionOneofCase.Increment:
                {
                    state.Count++;
                    return state;
                }
                case PCounterAction.ActionOneofCase.Reset:
                {
                    state.Count = 0;
                    return state;
                }
                default:
                    throw new ArgumentOutOfRangeException();
            }
        }
    }
}