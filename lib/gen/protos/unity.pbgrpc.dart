///
//  Generated code. Do not modify.
//  source: unity.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'unity.pb.dart' as $1;
import 'google/protobuf/empty.pb.dart' as $0;
export 'unity.pb.dart';

class SceneServiceClient extends $grpc.Client {
  static final _$loadScene =
      $grpc.ClientMethod<$1.LoadSceneRequest, $1.LoadSceneResponse>(
          '/pbunity.SceneService/LoadScene',
          ($1.LoadSceneRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.LoadSceneResponse.fromBuffer(value));
  static final _$unloadScene =
      $grpc.ClientMethod<$1.UnloadSceneRequest, $0.Empty>(
          '/pbunity.SceneService/UnloadScene',
          ($1.UnloadSceneRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  SceneServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.LoadSceneResponse> loadScene(
      $1.LoadSceneRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$loadScene, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> unloadScene($1.UnloadSceneRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unloadScene, request, options: options);
  }
}

abstract class SceneServiceBase extends $grpc.Service {
  $core.String get $name => 'pbunity.SceneService';

  SceneServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.LoadSceneRequest, $1.LoadSceneResponse>(
        'LoadScene',
        loadScene_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.LoadSceneRequest.fromBuffer(value),
        ($1.LoadSceneResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UnloadSceneRequest, $0.Empty>(
        'UnloadScene',
        unloadScene_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.UnloadSceneRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$1.LoadSceneResponse> loadScene_Pre($grpc.ServiceCall call,
      $async.Future<$1.LoadSceneRequest> request) async {
    return loadScene(call, await request);
  }

  $async.Future<$0.Empty> unloadScene_Pre($grpc.ServiceCall call,
      $async.Future<$1.UnloadSceneRequest> request) async {
    return unloadScene(call, await request);
  }

  $async.Future<$1.LoadSceneResponse> loadScene(
      $grpc.ServiceCall call, $1.LoadSceneRequest request);
  $async.Future<$0.Empty> unloadScene(
      $grpc.ServiceCall call, $1.UnloadSceneRequest request);
}
