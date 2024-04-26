import 'package:app/foundation/unity_widget_controller_ex.dart';
import 'package:app/gen/proto/unity/app.pb.dart';
import 'package:app/gen/proto/unity/app.pbserver.dart';
import 'package:app/gen/proto/unity/scenes/counter.pb.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CounterViewModel extends StateNotifier<PCounterState> {
  final Ref ref;

  CounterViewModel(super.state, this.ref);

  loadCounterApp(UnityWidgetController controller) {
    controller.sendAction(PAppAction(
      loadAppAction: PLoadAppAction(
        counter: PLoadAppAction_Counter(),
      ),
    ));
  }

  unloadApp(UnityWidgetController controller) {
    controller.sendAction(PAppAction(
      loadAppAction: PLoadAppAction(),
    ));
  }

  void increment(UnityWidgetController controller) {
    controller.sendAction(PAppAction(
      counterAction: PCounterAction(
        increment: PCounterAction_Increment(),
      ),
    ));
  }

  void reset(UnityWidgetController controller) {
    controller.sendAction(PAppAction(
      counterAction: PCounterAction(
        reset: PCounterAction_Reset(),
      ),
    ));
  }

  void sync(PCounterState counterState) {
    state = counterState;
  }
}

final counterViewModel = StateNotifierProvider<CounterViewModel, PCounterState>(
    (ref) => CounterViewModel(PCounterState(count: 0), ref));
