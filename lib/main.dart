import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app.dart';
import 'data/local/unity_service_provider.dart';

void main() async {
  runZonedGuarded(() {
    runApp(ProviderScope(child: App()));
  }, (error, trace) {
    print(error);
  });
}
