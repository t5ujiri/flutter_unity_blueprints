//
//  Generated code. Do not modify.
//  source: unity/scenes/counter.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use pCounterStateDescriptor instead')
const PCounterState$json = {
  '1': 'PCounterState',
  '2': [
    {'1': 'count', '3': 1, '4': 1, '5': 5, '10': 'count'},
  ],
};

/// Descriptor for `PCounterState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pCounterStateDescriptor = $convert.base64Decode(
    'Cg1QQ291bnRlclN0YXRlEhQKBWNvdW50GAEgASgFUgVjb3VudA==');

@$core.Deprecated('Use pCounterActionDescriptor instead')
const PCounterAction$json = {
  '1': 'PCounterAction',
  '2': [
    {'1': 'increment', '3': 1, '4': 1, '5': 11, '6': '.fub.unity.scenes.PCounterAction.Increment', '9': 0, '10': 'increment'},
    {'1': 'reset', '3': 2, '4': 1, '5': 11, '6': '.fub.unity.scenes.PCounterAction.Reset', '9': 0, '10': 'reset'},
  ],
  '3': [PCounterAction_Increment$json, PCounterAction_Reset$json],
  '8': [
    {'1': 'action'},
  ],
};

@$core.Deprecated('Use pCounterActionDescriptor instead')
const PCounterAction_Increment$json = {
  '1': 'Increment',
};

@$core.Deprecated('Use pCounterActionDescriptor instead')
const PCounterAction_Reset$json = {
  '1': 'Reset',
};

/// Descriptor for `PCounterAction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pCounterActionDescriptor = $convert.base64Decode(
    'Cg5QQ291bnRlckFjdGlvbhJKCglpbmNyZW1lbnQYASABKAsyKi5mdWIudW5pdHkuc2NlbmVzLl'
    'BDb3VudGVyQWN0aW9uLkluY3JlbWVudEgAUglpbmNyZW1lbnQSPgoFcmVzZXQYAiABKAsyJi5m'
    'dWIudW5pdHkuc2NlbmVzLlBDb3VudGVyQWN0aW9uLlJlc2V0SABSBXJlc2V0GgsKCUluY3JlbW'
    'VudBoHCgVSZXNldEIICgZhY3Rpb24=');

