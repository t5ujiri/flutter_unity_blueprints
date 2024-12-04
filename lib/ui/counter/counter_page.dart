import 'dart:convert';

import 'package:app/gen/proto/unity/root.pb.dart';
import 'package:app/ui/counter/counter_view_model.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class CounterPage extends HookConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterViewModel.select((value) => value.count));
    final unityController = useState<UnityWidgetController?>(null);

    return PopScope(
      onPopInvokedWithResult: (b, result) {
        if (b) {
          if (unityController.value != null) {
            ref
                .read(counterViewModel.notifier)
                .unloadApp(unityController.value!);
          }
        }
      },
      child: Scaffold(
        appBar: AppBar(
          actions: [
            TextButton(
              onPressed: () {
                ref
                    .read(counterViewModel.notifier)
                    .reset(unityController.value!);
              },
              child: const Text('Reset'),
            ),
          ],
        ),
        body: Stack(
          children: [
            Stack(
              children: [
                UnityWidget(
                  onUnityCreated: (controller) async {
                    unityController.value = controller;
                    controller.resume();
                    await controller.isLoaded();
                    ref
                        .read(counterViewModel.notifier)
                        .loadCounterApp(controller);
                  },
                  onUnityMessage: (message) {
                    var state = PRootState.fromBuffer(base64.decode(message));

                    switch (state.whichState()) {
                      case PRootState_State.loadAppState:
                      // TODO: Handle this case.
                      case PRootState_State.counterState:
                        ref
                            .read(counterViewModel.notifier)
                            .sync(state.counterState);
                      case PRootState_State.notSet:
                      // TODO: Handle this case.
                    }
                  },
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text('Count: $count'),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ref
                .read(counterViewModel.notifier)
                .increment(unityController.value!);
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
