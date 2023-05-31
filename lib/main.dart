import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app.dart';

void main() async {
  runZonedGuarded(() {
    runApp(const ProviderScope(child: App()));
  }, (error, trace) {
    if (kDebugMode) {
      print(error);
    }
  });
}
