import 'package:app/data/repository/unity_repository.dart';
import 'package:app/gen/protos/unity/jumper.pb.dart';
import 'package:app/gen/protos/unity/unity.pb.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class JumperViewModel extends StateNotifier<JumperState> {
  final Reader read;

  JumperViewModel(JumperState state, this.read) : super(state);

  loadJumperApp() {
    read(unityRepository).dispatchState(AppState(
      loadAppState: LoadAppState(
        jumper: LoadAppState_Jumper(),
      ),
    ));
  }

  unloadApp() {
    read(unityRepository).dispatchState(AppState(
      loadAppState: LoadAppState(),
    ));
  }

  reduce(JumperAction action) {
    switch (action.whichAction()) {
      case JumperAction_Action.jump:
        state = (state.toBuilder() as JumperState)..triggerJump += 1;
        break;
      case JumperAction_Action.notSet:
        break;
      case JumperAction_Action.toggleCanJump:
        state = (state.toBuilder() as JumperState)
          ..canJump = action.toggleCanJump.canJump;
        break;
    }

    read(unityRepository).dispatchState(AppState(jumperState: state));
  }
}

final jumperViewModelProvider =
    StateNotifierProvider<JumperViewModel, JumperState>(
        (ref) => JumperViewModel(JumperState(), ref.read));
