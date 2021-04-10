///
//  Generated code. Do not modify.
//  source: counter.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'google/protobuf/empty.pb.dart' as $0;
import 'counter.pb.dart' as $1;
export 'counter.pb.dart';

class CounterServiceClient extends $grpc.Client {
  static final _$increment =
      $grpc.ClientMethod<$0.Empty, $1.CounterIncrementResponse>(
          '/CounterService/Increment',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.CounterIncrementResponse.fromBuffer(value));

  CounterServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.CounterIncrementResponse> increment($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$increment, request, options: options);
  }
}

abstract class CounterServiceBase extends $grpc.Service {
  $core.String get $name => 'CounterService';

  CounterServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.CounterIncrementResponse>(
        'Increment',
        increment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.CounterIncrementResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.CounterIncrementResponse> increment_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return increment(call, await request);
  }

  $async.Future<$1.CounterIncrementResponse> increment(
      $grpc.ServiceCall call, $0.Empty request);
}
