///
//  Generated code. Do not modify.
//  source: unity/counter.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use counterStateDescriptor instead')
const CounterState$json = const {
  '1': 'CounterState',
  '2': const [
    const {'1': 'count', '3': 1, '4': 1, '5': 3, '10': 'count'},
  ],
};

/// Descriptor for `CounterState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List counterStateDescriptor = $convert.base64Decode('CgxDb3VudGVyU3RhdGUSFAoFY291bnQYASABKANSBWNvdW50');
@$core.Deprecated('Use counterActionDescriptor instead')
const CounterAction$json = const {
  '1': 'CounterAction',
  '2': const [
    const {'1': 'increment', '3': 1, '4': 1, '5': 11, '6': '.fub.unity.CounterAction.Increment', '9': 0, '10': 'increment'},
  ],
  '3': const [CounterAction_Increment$json],
  '8': const [
    const {'1': 'action'},
  ],
};

@$core.Deprecated('Use counterActionDescriptor instead')
const CounterAction_Increment$json = const {
  '1': 'Increment',
};

/// Descriptor for `CounterAction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List counterActionDescriptor = $convert.base64Decode('Cg1Db3VudGVyQWN0aW9uEkIKCWluY3JlbWVudBgBIAEoCzIiLmZ1Yi51bml0eS5Db3VudGVyQWN0aW9uLkluY3JlbWVudEgAUglpbmNyZW1lbnQaCwoJSW5jcmVtZW50QggKBmFjdGlvbg==');
