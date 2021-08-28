import 'dart:convert';

import 'package:flutter_unity/flutter_unity.dart';
import 'package:flutter_unity_blueprints/gen/protos/unity.pb.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final unityRepository = Provider((ref) => UnityRepository());

class UnityRepository {
  void sendResponse(UnityViewController controller, AppResponse state) {
    controller.send("FlutterMessageReceiver", "OnReceive",
        base64Encode(state.writeToBuffer()));
  }
}
