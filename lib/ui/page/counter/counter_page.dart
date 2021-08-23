import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_unity/flutter_unity.dart';
import 'package:flutter_unity_blueprints/data/local/unity_service_provider.dart';
import 'package:flutter_unity_blueprints/gen/protos/unity.pb.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'counter_page.freezed.dart';

class CounterPage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useMemoized((){
      ref.read(counterViewModel.notifier).reset();
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
          ref.read(counterViewModel.notifier).increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

@freezed
class CounterState with _$CounterState {
  factory CounterState({required int count}) = _CounterState;
}

class CounterViewModel extends StateNotifier<CounterState> {
  final ProviderRefBase ref;

  CounterViewModel(CounterState state, this.ref) : super(state);

  // set count(int count) {
  //   state = state.copyWith(count: count);
  // }

  increment() {
    state = state.copyWith(count: state.count + 1);
    var counterResponse = CounterResponse()..count = Int64(state.count);
    ref
        .read(unityResponseSubject)
        .add(AppResponse()..counterResponse = counterResponse);
  }

  set response(CounterResponse counterResponse) {}

  void reset() {
    state = state.copyWith(count: 0);
    var counterResponse = CounterResponse()..count = Int64(state.count);
    ref
        .read(unityResponseSubject)
        .add(AppResponse()..counterResponse = counterResponse);
  }
}

final counterViewModel = StateNotifierProvider<CounterViewModel, CounterState>(
    (ref) => CounterViewModel(CounterState(count: 0), ref));
