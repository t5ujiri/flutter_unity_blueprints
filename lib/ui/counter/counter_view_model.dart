import 'package:app/data/repository/unity_repository.dart';
import 'package:app/gen/protos/unity/counter.pb.dart';
import 'package:app/gen/protos/unity/unity.pb.dart';
import 'package:fixnum/fixnum.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CounterViewModel extends StateNotifier<CounterState> {
  final Reader read;

  CounterViewModel(CounterState state, this.read) : super(state);

  loadCounterApp() {
    read(unityRepository).dispatchState(AppState(
      loadAppState: LoadAppState(
        counter: LoadAppState_Counter(),
      ),
    ));
  }

  unloadApp() {
    read(unityRepository).dispatchState(AppState(
      loadAppState: LoadAppState(),
    ));
  }

  reduce(CounterAction action) {
    switch (action.whichAction()) {
      case CounterAction_Action.increment:
        increment(action.increment);
        break;
      case CounterAction_Action.notSet:
        break;
    }

    read(unityRepository).dispatchState(AppState(counterState: state));
  }

  void increment(CounterAction_Increment increment) {
    state = (state.toBuilder() as CounterState)..count += 1;
  }

  void reset() {
    state = (state.toBuilder() as CounterState)..count = Int64(0);
  }
}

final counterViewModel = StateNotifierProvider<CounterViewModel, CounterState>(
    (ref) => CounterViewModel(CounterState(count: Int64(0)), ref.read));
