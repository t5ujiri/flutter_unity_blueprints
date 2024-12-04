//
//  Generated code. Do not modify.
//  source: unity/load_app.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use pLoadAppStateDescriptor instead')
const PLoadAppState$json = {
  '1': 'PLoadAppState',
  '2': [
    {'1': 'none', '3': 1, '4': 1, '5': 11, '6': '.fub.unity.PLoadAppState.None', '9': 0, '10': 'none'},
    {'1': 'counter', '3': 2, '4': 1, '5': 11, '6': '.fub.unity.PLoadAppState.Counter', '9': 0, '10': 'counter'},
  ],
  '3': [PLoadAppState_None$json, PLoadAppState_Counter$json],
  '8': [
    {'1': 'app'},
  ],
};

@$core.Deprecated('Use pLoadAppStateDescriptor instead')
const PLoadAppState_None$json = {
  '1': 'None',
};

@$core.Deprecated('Use pLoadAppStateDescriptor instead')
const PLoadAppState_Counter$json = {
  '1': 'Counter',
};

/// Descriptor for `PLoadAppState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pLoadAppStateDescriptor = $convert.base64Decode(
    'Cg1QTG9hZEFwcFN0YXRlEjMKBG5vbmUYASABKAsyHS5mdWIudW5pdHkuUExvYWRBcHBTdGF0ZS'
    '5Ob25lSABSBG5vbmUSPAoHY291bnRlchgCIAEoCzIgLmZ1Yi51bml0eS5QTG9hZEFwcFN0YXRl'
    'LkNvdW50ZXJIAFIHY291bnRlchoGCgROb25lGgkKB0NvdW50ZXJCBQoDYXBw');

@$core.Deprecated('Use pLoadAppActionDescriptor instead')
const PLoadAppAction$json = {
  '1': 'PLoadAppAction',
  '2': [
    {'1': 'unload', '3': 1, '4': 1, '5': 11, '6': '.fub.unity.PLoadAppAction.Unload', '9': 0, '10': 'unload'},
    {'1': 'counter', '3': 2, '4': 1, '5': 11, '6': '.fub.unity.PLoadAppAction.Counter', '9': 0, '10': 'counter'},
  ],
  '3': [PLoadAppAction_Unload$json, PLoadAppAction_Counter$json],
  '8': [
    {'1': 'action'},
  ],
};

@$core.Deprecated('Use pLoadAppActionDescriptor instead')
const PLoadAppAction_Unload$json = {
  '1': 'Unload',
};

@$core.Deprecated('Use pLoadAppActionDescriptor instead')
const PLoadAppAction_Counter$json = {
  '1': 'Counter',
};

/// Descriptor for `PLoadAppAction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pLoadAppActionDescriptor = $convert.base64Decode(
    'Cg5QTG9hZEFwcEFjdGlvbhI6CgZ1bmxvYWQYASABKAsyIC5mdWIudW5pdHkuUExvYWRBcHBBY3'
    'Rpb24uVW5sb2FkSABSBnVubG9hZBI9Cgdjb3VudGVyGAIgASgLMiEuZnViLnVuaXR5LlBMb2Fk'
    'QXBwQWN0aW9uLkNvdW50ZXJIAFIHY291bnRlchoICgZVbmxvYWQaCQoHQ291bnRlckIICgZhY3'
    'Rpb24=');

