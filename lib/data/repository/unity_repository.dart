import 'dart:convert';

import 'package:app/gen/protos/unity/unity.pb.dart';
import 'package:flutter_unity/flutter_unity.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final unityRepository = Provider((ref) => UnityRepository());

class UnityRepository {
  UnityViewController? controller;

  void dispatchState(AppState state) {
    controller?.send("FlutterMessageReceiver", "OnReceive",
        base64Encode(state.writeToBuffer()));
  }
}
