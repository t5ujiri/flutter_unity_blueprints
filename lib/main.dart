import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app.dart';

void main() async {
  runZonedGuarded(() {
    runApp(ProviderScope(child: App()));
  }, (error, trace) {
    print(error);
  });
}
