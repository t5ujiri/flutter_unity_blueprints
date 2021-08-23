import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_unity/flutter_unity.dart';
import 'package:flutter_unity_blueprints/data/local/unity_service_provider.dart';
import 'package:flutter_unity_blueprints/data/repository/unity_jumper_repository.dart';
import 'package:flutter_unity_blueprints/gen/protos/google/protobuf/timestamp.pb.dart';
import 'package:flutter_unity_blueprints/gen/protos/unity.pb.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'jumper_page.freezed.dart';

class JumperPage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useMemoized(() {
      ref.read(jumperViewModel.notifier).reset();
    });

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
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: state.canJump
            ? () {
                jump(ref);
              }
            : null,
        child: Icon(Icons.arrow_circle_up),
        disabledElevation: 0,
      ),
    );
  }

  void jump(WidgetRef ref) {
    final controller = JumperResponse_JumperController()
      ..triggerJump = Timestamp.fromDateTime(DateTime.now());
    final response = JumperResponse()..controller = controller;

    ref.read(unityRepository).mutate(AppResponse()..jumperResponse = response);
  }
}

@freezed
class JumperState with _$JumperState {
  factory JumperState({
    required bool canJump,
    required double height,
  }) = _JumperState;
}

class JumperViewModel extends StateNotifier<JumperState> {
  final ProviderRefBase ref;

  JumperViewModel(JumperState state, this.ref) : super(state);

  double get height => state.height;

  bool get canJump => state.canJump;

  set height(double height) {
    state = state.copyWith(height: height);
  }

  set canJump(bool canJump) {
    state = state.copyWith(canJump: canJump);
  }

  void jump() {
    final response = AppResponse();
    final jumperController = JumperResponse_JumperController()
      ..triggerJump = Timestamp.fromDateTime(DateTime.now());
    final jumperResponse = JumperResponse()..controller = jumperController;
    response.jumperResponse = jumperResponse;

    ref.read(unityResponseSubject).add(response);
  }

  void reset() {
    final response = AppResponse();
    response.jumperResponse = JumperResponse();

    ref.read(unityResponseSubject).add(response);
  }
}

final jumperViewModel = StateNotifierProvider<JumperViewModel, JumperState>(
    (ref) => JumperViewModel(JumperState(canJump: true, height: 0), ref));
