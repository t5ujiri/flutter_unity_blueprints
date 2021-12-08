import 'package:app/gen/protos/unity/counter.pb.dart';

class CounterActionCreator {
  static CounterAction increment() {
    return CounterAction(increment: CounterAction_Increment());
  }
}
