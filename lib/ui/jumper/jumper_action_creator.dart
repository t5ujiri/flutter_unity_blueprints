import 'package:app/gen/protos/unity/jumper.pb.dart';

class JumperActionCreator {
  static JumperAction jump() {
    return JumperAction(
      jump: JumperAction_Jump(),
    );
  }
}
