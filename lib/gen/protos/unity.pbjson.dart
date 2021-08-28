///
//  Generated code. Do not modify.
//  source: unity.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
import 'google/protobuf/timestamp.pbjson.dart' as $0;

@$core.Deprecated('Use appResponseDescriptor instead')
const AppResponse$json = const {
  '1': 'AppResponse',
  '2': const [
    const {'1': 'load_app_response', '3': 1, '4': 1, '5': 11, '6': '.pbunity.LoadAppResponse', '9': 0, '10': 'loadAppResponse'},
    const {'1': 'counter_response', '3': 2, '4': 1, '5': 11, '6': '.pbunity.CounterResponse', '9': 0, '10': 'counterResponse'},
    const {'1': 'jumper_response', '3': 3, '4': 1, '5': 11, '6': '.pbunity.JumperResponse', '9': 0, '10': 'jumperResponse'},
  ],
  '8': const [
    const {'1': 'state'},
  ],
};

/// Descriptor for `AppResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appResponseDescriptor = $convert.base64Decode('CgtBcHBSZXNwb25zZRJGChFsb2FkX2FwcF9yZXNwb25zZRgBIAEoCzIYLnBidW5pdHkuTG9hZEFwcFJlc3BvbnNlSABSD2xvYWRBcHBSZXNwb25zZRJFChBjb3VudGVyX3Jlc3BvbnNlGAIgASgLMhgucGJ1bml0eS5Db3VudGVyUmVzcG9uc2VIAFIPY291bnRlclJlc3BvbnNlEkIKD2p1bXBlcl9yZXNwb25zZRgDIAEoCzIXLnBidW5pdHkuSnVtcGVyUmVzcG9uc2VIAFIOanVtcGVyUmVzcG9uc2VCBwoFc3RhdGU=');
@$core.Deprecated('Use loadAppResponseDescriptor instead')
const LoadAppResponse$json = const {
  '1': 'LoadAppResponse',
  '2': const [
    const {'1': 'app_name', '3': 1, '4': 1, '5': 9, '10': 'appName'},
  ],
};

/// Descriptor for `LoadAppResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loadAppResponseDescriptor = $convert.base64Decode('Cg9Mb2FkQXBwUmVzcG9uc2USGQoIYXBwX25hbWUYASABKAlSB2FwcE5hbWU=');
@$core.Deprecated('Use counterResponseDescriptor instead')
const CounterResponse$json = const {
  '1': 'CounterResponse',
  '2': const [
    const {'1': 'count', '3': 1, '4': 1, '5': 3, '10': 'count'},
  ],
};

/// Descriptor for `CounterResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List counterResponseDescriptor = $convert.base64Decode('Cg9Db3VudGVyUmVzcG9uc2USFAoFY291bnQYASABKANSBWNvdW50');
@$core.Deprecated('Use jumperResponseDescriptor instead')
const JumperResponse$json = const {
  '1': 'JumperResponse',
  '2': const [
    const {'1': 'controller', '3': 1, '4': 1, '5': 11, '6': '.pbunity.JumperResponse.JumperController', '10': 'controller'},
  ],
  '3': const [JumperResponse_JumperController$json],
};

@$core.Deprecated('Use jumperResponseDescriptor instead')
const JumperResponse_JumperController$json = const {
  '1': 'JumperController',
  '2': const [
    const {'1': 'trigger_jump', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'triggerJump'},
  ],
};

/// Descriptor for `JumperResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jumperResponseDescriptor = $convert.base64Decode('Cg5KdW1wZXJSZXNwb25zZRJICgpjb250cm9sbGVyGAEgASgLMigucGJ1bml0eS5KdW1wZXJSZXNwb25zZS5KdW1wZXJDb250cm9sbGVyUgpjb250cm9sbGVyGlEKEEp1bXBlckNvbnRyb2xsZXISPQoMdHJpZ2dlcl9qdW1wGAEgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFILdHJpZ2dlckp1bXA=');
@$core.Deprecated('Use appRequestDescriptor instead')
const AppRequest$json = const {
  '1': 'AppRequest',
  '2': const [
    const {'1': 'jumper_request', '3': 1, '4': 1, '5': 11, '6': '.pbunity.JumperRequest', '9': 0, '10': 'jumperRequest'},
  ],
  '8': const [
    const {'1': 'request'},
  ],
};

/// Descriptor for `AppRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appRequestDescriptor = $convert.base64Decode('CgpBcHBSZXF1ZXN0Ej8KDmp1bXBlcl9yZXF1ZXN0GAEgASgLMhYucGJ1bml0eS5KdW1wZXJSZXF1ZXN0SABSDWp1bXBlclJlcXVlc3RCCQoHcmVxdWVzdA==');
@$core.Deprecated('Use jumperRequestDescriptor instead')
const JumperRequest$json = const {
  '1': 'JumperRequest',
  '2': const [
    const {'1': 'can_jump', '3': 1, '4': 1, '5': 8, '10': 'canJump'},
    const {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.pbunity.Vector3', '10': 'position'},
  ],
};

/// Descriptor for `JumperRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jumperRequestDescriptor = $convert.base64Decode('Cg1KdW1wZXJSZXF1ZXN0EhkKCGNhbl9qdW1wGAEgASgIUgdjYW5KdW1wEiwKCHBvc2l0aW9uGAIgASgLMhAucGJ1bml0eS5WZWN0b3IzUghwb3NpdGlvbg==');
@$core.Deprecated('Use vector3Descriptor instead')
const Vector3$json = const {
  '1': 'Vector3',
  '2': const [
    const {'1': 'x', '3': 1, '4': 1, '5': 2, '10': 'x'},
    const {'1': 'y', '3': 2, '4': 1, '5': 2, '10': 'y'},
    const {'1': 'z', '3': 3, '4': 1, '5': 2, '10': 'z'},
  ],
};

/// Descriptor for `Vector3`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vector3Descriptor = $convert.base64Decode('CgdWZWN0b3IzEgwKAXgYASABKAJSAXgSDAoBeRgCIAEoAlIBeRIMCgF6GAMgASgCUgF6');
@$core.Deprecated('Use vector4Descriptor instead')
const Vector4$json = const {
  '1': 'Vector4',
  '2': const [
    const {'1': 'x', '3': 1, '4': 1, '5': 2, '10': 'x'},
    const {'1': 'y', '3': 2, '4': 1, '5': 2, '10': 'y'},
    const {'1': 'z', '3': 3, '4': 1, '5': 2, '10': 'z'},
    const {'1': 'w', '3': 4, '4': 1, '5': 2, '10': 'w'},
  ],
};

/// Descriptor for `Vector4`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vector4Descriptor = $convert.base64Decode('CgdWZWN0b3I0EgwKAXgYASABKAJSAXgSDAoBeRgCIAEoAlIBeRIMCgF6GAMgASgCUgF6EgwKAXcYBCABKAJSAXc=');
const $core.Map<$core.String, $core.dynamic> UnityServiceBase$json = const {
  '1': 'UnityService',
  '2': const [
    const {'1': 'Sync', '2': '.pbunity.AppRequest', '3': '.pbunity.AppResponse', '5': true, '6': true},
  ],
};

@$core.Deprecated('Use unityServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> UnityServiceBase$messageJson = const {
  '.pbunity.AppRequest': AppRequest$json,
  '.pbunity.JumperRequest': JumperRequest$json,
  '.pbunity.Vector3': Vector3$json,
  '.pbunity.AppResponse': AppResponse$json,
  '.pbunity.LoadAppResponse': LoadAppResponse$json,
  '.pbunity.CounterResponse': CounterResponse$json,
  '.pbunity.JumperResponse': JumperResponse$json,
  '.pbunity.JumperResponse.JumperController': JumperResponse_JumperController$json,
  '.google.protobuf.Timestamp': $0.Timestamp$json,
};

/// Descriptor for `UnityService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List unityServiceDescriptor = $convert.base64Decode('CgxVbml0eVNlcnZpY2USNQoEU3luYxITLnBidW5pdHkuQXBwUmVxdWVzdBoULnBidW5pdHkuQXBwUmVzcG9uc2UoATAB');
