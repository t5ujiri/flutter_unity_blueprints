import 'dart:convert';

import 'package:app/gen/proto/unity/app.pb.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';

extension UnityWidgetControllerEx on UnityWidgetController {
  void sendAction(PAppAction action) {
    postMessage("FlutterMessageReceiver", "OnReceive",
        base64Encode(action.writeToBuffer()));
  }
}
