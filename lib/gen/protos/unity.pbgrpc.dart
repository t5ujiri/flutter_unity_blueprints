///
//  Generated code. Do not modify.
//  source: unity.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'google/protobuf/empty.pb.dart' as $0;
import 'unity.pb.dart' as $1;
export 'unity.pb.dart';

class UnityServiceClient extends $grpc.Client {
  static final _$subscribe = $grpc.ClientMethod<$0.Empty, $1.AppState>(
      '/pbunity.UnityService/Subscribe',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.AppState.fromBuffer(value));

  UnityServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$1.AppState> subscribe($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$subscribe, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class UnityServiceBase extends $grpc.Service {
  $core.String get $name => 'pbunity.UnityService';

  UnityServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.AppState>(
        'Subscribe',
        subscribe_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.AppState value) => value.writeToBuffer()));
  }

  $async.Stream<$1.AppState> subscribe_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async* {
    yield* subscribe(call, await request);
  }

  $async.Stream<$1.AppState> subscribe(
      $grpc.ServiceCall call, $0.Empty request);
}
