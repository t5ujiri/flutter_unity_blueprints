import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_unity/flutter_unity.dart';
import 'package:flutter_unity_blueprints/data/local/unity_service_provider.dart';
import 'package:flutter_unity_blueprints/gen/protos/unity.pb.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CounterPage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useMemoized(() {
      ref.read(counterStateSubject).add(CounterState(count: Int64(0)));
    });

    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          UnityView(
            onCreated: (controller) {
              controller.resume();
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final current = ref.read(counterStateSubject).value.count;
          ref.read(counterStateSubject).add(CounterState(count: current + 1));
        },
      ),
    );
  }
}
