///
//  Generated code. Do not modify.
//  source: unity/scenes/counter.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use pCounterStateDescriptor instead')
const PCounterState$json = const {
  '1': 'PCounterState',
  '2': const [
    const {'1': 'count', '3': 1, '4': 1, '5': 5, '10': 'count'},
  ],
};

/// Descriptor for `PCounterState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pCounterStateDescriptor = $convert.base64Decode('Cg1QQ291bnRlclN0YXRlEhQKBWNvdW50GAEgASgFUgVjb3VudA==');
@$core.Deprecated('Use pCounterActionDescriptor instead')
const PCounterAction$json = const {
  '1': 'PCounterAction',
  '2': const [
    const {'1': 'increment', '3': 1, '4': 1, '5': 11, '6': '.fub.unity.PCounterAction.Increment', '9': 0, '10': 'increment'},
    const {'1': 'reset', '3': 2, '4': 1, '5': 11, '6': '.fub.unity.PCounterAction.Reset', '9': 0, '10': 'reset'},
  ],
  '3': const [PCounterAction_Increment$json, PCounterAction_Reset$json],
  '8': const [
    const {'1': 'action'},
  ],
};

@$core.Deprecated('Use pCounterActionDescriptor instead')
const PCounterAction_Increment$json = const {
  '1': 'Increment',
};

@$core.Deprecated('Use pCounterActionDescriptor instead')
const PCounterAction_Reset$json = const {
  '1': 'Reset',
};

/// Descriptor for `PCounterAction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pCounterActionDescriptor = $convert.base64Decode('Cg5QQ291bnRlckFjdGlvbhJDCglpbmNyZW1lbnQYASABKAsyIy5mdWIudW5pdHkuUENvdW50ZXJBY3Rpb24uSW5jcmVtZW50SABSCWluY3JlbWVudBI3CgVyZXNldBgCIAEoCzIfLmZ1Yi51bml0eS5QQ291bnRlckFjdGlvbi5SZXNldEgAUgVyZXNldBoLCglJbmNyZW1lbnQaBwoFUmVzZXRCCAoGYWN0aW9u');
