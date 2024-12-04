import 'dart:convert';

import 'package:app/gen/proto/unity/root.pb.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';

extension UnityWidgetControllerEx on UnityWidgetController {
  void sendAction(PRootAction action) {
    postMessage("FlutterMessageReceiver", "OnReceive",
        base64Encode(action.writeToBuffer()));
  }
}
