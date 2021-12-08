import 'dart:convert';

import 'package:app/data/repository/unity_repository.dart';
import 'package:app/gen/protos/unity/unity.pb.dart';
import 'package:app/ui/counter/counter_action_creator.dart';
import 'package:app/ui/counter/counter_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_unity/flutter_unity.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CounterPage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useFuture(useMemoized(() async {
      await Future.delayed(Duration.zero);
      ref.read(counterViewModel.notifier).reset();
    }));

    return WillPopScope(
      onWillPop: () {
        ref.read(counterViewModel.notifier).unloadApp();
        Navigator.of(context).pop();
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(),
        body: Stack(
          children: [
            UnityView(
              onCreated: (controller) {
                ref.read(unityRepository).controller = controller;
                controller.resume();
                ref.read(counterViewModel.notifier).loadCounterApp();
              },
              onMessage: (controller, message) {
                var action = AppAction.fromBuffer(base64.decode(message));

                switch (action.whichAction()) {
                  case AppAction_Action.counterAction:
                    ref
                        .read(counterViewModel.notifier)
                        .reduce(action.counterAction);
                    break;
                  case AppAction_Action.jumperAction:
                    break;
                  case AppAction_Action.notSet:
                    break;
                }
              },
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ref
                .read(counterViewModel.notifier)
                .reduce(CounterActionCreator.increment());
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
