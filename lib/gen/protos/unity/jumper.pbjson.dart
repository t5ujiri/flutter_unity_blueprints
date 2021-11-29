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
};

/// Descriptor for `JumperAction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jumperActionDescriptor = $convert.base64Decode('CgxKdW1wZXJBY3Rpb24=');
@$core.Deprecated('Use jumperStateDescriptor instead')
const JumperState$json = const {
  '1': 'JumperState',
  '2': const [
    const {'1': 'can_jump', '3': 1, '4': 1, '5': 8, '10': 'canJump'},
    const {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.fub.unity.Vector3', '10': 'position'},
    const {'1': 'trigger_jump', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'triggerJump'},
  ],
};

/// Descriptor for `JumperState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jumperStateDescriptor = $convert.base64Decode('CgtKdW1wZXJTdGF0ZRIZCghjYW5fanVtcBgBIAEoCFIHY2FuSnVtcBIuCghwb3NpdGlvbhgCIAEoCzISLmZ1Yi51bml0eS5WZWN0b3IzUghwb3NpdGlvbhI9Cgx0cmlnZ2VyX2p1bXAYAyABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgt0cmlnZ2VySnVtcA==');
