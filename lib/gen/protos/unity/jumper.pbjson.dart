///
//  Generated code. Do not modify.
//  source: unity/jumper.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use jumperActionDescriptor instead')
const JumperAction$json = const {
  '1': 'JumperAction',
  '2': const [
    const {'1': 'jump', '3': 1, '4': 1, '5': 11, '6': '.fub.unity.JumperAction.Jump', '9': 0, '10': 'jump'},
    const {'1': 'toggle_can_jump', '3': 2, '4': 1, '5': 11, '6': '.fub.unity.JumperAction.ToggleCanJump', '9': 0, '10': 'toggleCanJump'},
  ],
  '3': const [JumperAction_Jump$json, JumperAction_ToggleCanJump$json],
  '8': const [
    const {'1': 'action'},
  ],
};

@$core.Deprecated('Use jumperActionDescriptor instead')
const JumperAction_Jump$json = const {
  '1': 'Jump',
};

@$core.Deprecated('Use jumperActionDescriptor instead')
const JumperAction_ToggleCanJump$json = const {
  '1': 'ToggleCanJump',
  '2': const [
    const {'1': 'can_jump', '3': 1, '4': 1, '5': 8, '10': 'canJump'},
  ],
};

/// Descriptor for `JumperAction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jumperActionDescriptor = $convert.base64Decode('CgxKdW1wZXJBY3Rpb24SMgoEanVtcBgBIAEoCzIcLmZ1Yi51bml0eS5KdW1wZXJBY3Rpb24uSnVtcEgAUgRqdW1wEk8KD3RvZ2dsZV9jYW5fanVtcBgCIAEoCzIlLmZ1Yi51bml0eS5KdW1wZXJBY3Rpb24uVG9nZ2xlQ2FuSnVtcEgAUg10b2dnbGVDYW5KdW1wGgYKBEp1bXAaKgoNVG9nZ2xlQ2FuSnVtcBIZCghjYW5fanVtcBgBIAEoCFIHY2FuSnVtcEIICgZhY3Rpb24=');
@$core.Deprecated('Use jumperStateDescriptor instead')
const JumperState$json = const {
  '1': 'JumperState',
  '2': const [
    const {'1': 'can_jump', '3': 3, '4': 1, '5': 8, '10': 'canJump'},
    const {'1': 'trigger_jump', '3': 4, '4': 1, '5': 5, '10': 'triggerJump'},
  ],
};

/// Descriptor for `JumperState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jumperStateDescriptor = $convert.base64Decode('CgtKdW1wZXJTdGF0ZRIZCghjYW5fanVtcBgDIAEoCFIHY2FuSnVtcBIhCgx0cmlnZ2VyX2p1bXAYBCABKAVSC3RyaWdnZXJKdW1w');
