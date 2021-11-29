import 'dart:convert';

import 'package:app/gen/protos/unity/unity.pb.dart';
import 'package:app/ui/page/jumper/jumper_action_creator.dart';
import 'package:app/ui/page/jumper/jumper_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_unity/flutter_unity.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class JumperPage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(jumperViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(state.position.y.toString()),
      ),
      body: Stack(
        children: [
          UnityView(
            onCreated: (controller) {
              controller.resume();
              ref.read(jumperViewModelProvider.notifier).loadJumperApp();
            },
            onMessage: (controller, message) {
              var action = AppAction.fromBuffer(base64.decode(message));

              switch (action.whichAction()) {
                case AppAction_Action.counterAction:
                  ref
                      .read(jumperViewModelProvider.notifier)
                      .reduce(action.jumperAction);
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
        onPressed: state.canJump
            ? () {
                ref
                    .read(jumperViewModelProvider.notifier)
                    .reduce(JumperActionCreator.jump());
              }
            : null,
        child: Icon(Icons.arrow_circle_up),
        disabledElevation: 0,
      ),
    );
  }
}
