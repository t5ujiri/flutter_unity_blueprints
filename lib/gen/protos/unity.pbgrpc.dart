///
//  Generated code. Do not modify.
//  source: unity.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'unity.pb.dart' as $0;
export 'unity.pb.dart';

class UnityServiceClient extends $grpc.Client {
  static final _$sync = $grpc.ClientMethod<$0.AppRequest, $0.AppResponse>(
      '/pbunity.UnityService/Sync',
      ($0.AppRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AppResponse.fromBuffer(value));

  UnityServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.AppResponse> sync(
      $async.Stream<$0.AppRequest> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$sync, request, options: options);
  }
}

abstract class UnityServiceBase extends $grpc.Service {
  $core.String get $name => 'pbunity.UnityService';

  UnityServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AppRequest, $0.AppResponse>(
        'Sync',
        sync,
        true,
        true,
        ($core.List<$core.int> value) => $0.AppRequest.fromBuffer(value),
        ($0.AppResponse value) => value.writeToBuffer()));
  }

  $async.Stream<$0.AppResponse> sync(
      $grpc.ServiceCall call, $async.Stream<$0.AppRequest> request);
}
