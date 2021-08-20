import 'dart:async';

import 'package:fixnum/fixnum.dart';
import 'package:flutter_unity_blueprints/gen/protos/google/protobuf/empty.pb.dart';
import 'package:flutter_unity_blueprints/gen/protos/unity.pbgrpc.dart';
import 'package:grpc/grpc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/rxdart.dart';

final counterStateSubject = Provider<BehaviorSubject<CounterState>>((ref) {
  final subject = BehaviorSubject<CounterState>();
  subject.listen(print);
  subject.add(CounterState()..count = Int64(0));
  return subject;
});

class UnityServiceImpl extends UnityServiceBase {
  final Reader _reader;

  UnityServiceImpl(this._reader);

  @override
  Stream<AppState> subscribe(ServiceCall call, Empty request) async* {
    // while (!call.isCanceled) {
    //
    // }
    while (!call.isCanceled) {
      try {
        await for (final data in _reader(counterStateSubject)) {
          print(data);
          yield AppState()..counterState = data;
        }
      } catch (ex) {
        print(ex);
      }
    }
  }
}
