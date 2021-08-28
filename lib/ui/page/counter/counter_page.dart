import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_unity/flutter_unity.dart';
import 'package:flutter_unity_blueprints/data/repository/unity_repository.dart';
import 'package:flutter_unity_blueprints/gen/protos/unity.pb.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'counter_page.freezed.dart';

class CounterPage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          UnityView(
            onCreated: (controller) {
              controller.resume();
              ref.read(counterViewModel.notifier).controller = controller;
              ref.read(counterViewModel.notifier).loadCounterApp(controller);
              ref.read(counterViewModel.notifier).reset();
            },
            onMessage: (controller, message) {},
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterViewModel.notifier).increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

@freezed
class CounterState with _$CounterState {
  factory CounterState({
    required int count,
    UnityViewController? controller,
  }) = _CounterState;
}

class CounterViewModel extends StateNotifier<CounterState> {
  final ProviderRefBase ref;

  CounterViewModel(CounterState state, this.ref) : super(state);

  UnityViewController? get controller => state.controller;

  set controller(UnityViewController? controller) {
    state = state.copyWith(controller: controller);
  }

  loadCounterApp(UnityViewController controller) {
    ref.read(unityRepository).sendResponse(controller,
        AppResponse()..loadAppResponse = LoadAppResponse(appName: 'Counter'));
  }

  increment() {
    if (state.controller != null) {
      state = state.copyWith(count: state.count + 1);
      var counterResponse = CounterResponse()..count = Int64(state.count);
      ref.read(unityRepository).sendResponse(
          state.controller!, AppResponse()..counterResponse = counterResponse);
    }
  }

  reset() {
    if (state.controller != null) {
      state = state.copyWith(count: 0);
      var counterResponse = CounterResponse()..count = Int64(state.count);
      ref.read(unityRepository).sendResponse(
          state.controller!, AppResponse()..counterResponse = counterResponse);
    }
  }
}

final counterViewModel = StateNotifierProvider<CounterViewModel, CounterState>(
    (ref) => CounterViewModel(CounterState(count: 0), ref));
