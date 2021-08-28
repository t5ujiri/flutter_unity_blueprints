import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_unity/flutter_unity.dart';
import 'package:flutter_unity_blueprints/data/repository/unity_repository.dart';
import 'package:flutter_unity_blueprints/gen/protos/google/protobuf/timestamp.pb.dart';
import 'package:flutter_unity_blueprints/gen/protos/unity.pb.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'jumper_page.freezed.dart';

class JumperPage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(jumperViewModel);

    return Scaffold(
      appBar: AppBar(
        title: Text(state.height.toString()),
      ),
      body: Stack(
        children: [
          UnityView(
            onCreated: (controller) {
              controller.resume();
              ref.read(jumperViewModel.notifier).controller = controller;
              ref.read(jumperViewModel.notifier).loadJumperApp(controller);
              ref.read(jumperViewModel.notifier).reset();
            },
            onMessage: (controller, message) {
              var request = AppRequest.fromBuffer(base64.decode(message));
              handleRequest(ref, request);
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: state.canJump
            ? () {
                ref.read(jumperViewModel.notifier).jump();
              }
            : null,
        child: Icon(Icons.arrow_circle_up),
        disabledElevation: 0,
      ),
    );
  }

  void handleRequest(WidgetRef ref, AppRequest request) {
    switch (request.whichRequest()) {
      case AppRequest_Request.jumperRequest:
        ref.read(jumperViewModel.notifier).canJump =
            request.jumperRequest.canJump;
        ref.read(jumperViewModel.notifier).height =
            request.jumperRequest.position.y - 0.5;
        break;
      case AppRequest_Request.notSet:
        // TODO: Handle this case.
        break;
    }
  }
}

@freezed
class JumperState with _$JumperState {
  factory JumperState({
    required bool canJump,
    required double height,
    UnityViewController? controller,
  }) = _JumperState;
}

class JumperViewModel extends StateNotifier<JumperState> {
  final ProviderRefBase ref;

  JumperViewModel(JumperState state, this.ref) : super(state);

  double get height => state.height;

  bool get canJump => state.canJump;

  UnityViewController? get controller => state.controller;

  set controller(UnityViewController? controller) {
    state = state.copyWith(controller: controller);
  }

  set height(double height) {
    state = state.copyWith(height: height);
  }

  set canJump(bool canJump) {
    state = state.copyWith(canJump: canJump);
  }

  loadJumperApp(UnityViewController controller) {
    ref.read(unityRepository).sendResponse(controller,
        AppResponse()..loadAppResponse = LoadAppResponse(appName: 'Jumper'));
  }

  jump() {
    final controller = state.controller;
    if (controller != null) {
      final jumperController = JumperResponse_JumperController()
        ..triggerJump = Timestamp.fromDateTime(DateTime.now());
      final response = JumperResponse()..controller = jumperController;

      ref
          .read(unityRepository)
          .sendResponse(controller, AppResponse()..jumperResponse = response);
    }
  }

  reset() {
    final controller = state.controller;
    if (controller != null) {
      final response = AppResponse();
      response.jumperResponse = JumperResponse();

      ref.read(unityRepository).sendResponse(controller, response);
    }
  }
}

final jumperViewModel = StateNotifierProvider<JumperViewModel, JumperState>(
    (ref) => JumperViewModel(JumperState(canJump: true, height: 0), ref));
