///
//  Generated code. Do not modify.
//  source: unity/unity.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use appStateDescriptor instead')
const AppState$json = const {
  '1': 'AppState',
  '2': const [
    const {'1': 'load_app_state', '3': 1, '4': 1, '5': 11, '6': '.fub.unity.LoadAppState', '9': 0, '10': 'loadAppState'},
    const {'1': 'counter_state', '3': 2, '4': 1, '5': 11, '6': '.fub.unity.CounterState', '9': 0, '10': 'counterState'},
    const {'1': 'jumper_state', '3': 3, '4': 1, '5': 11, '6': '.fub.unity.JumperState', '9': 0, '10': 'jumperState'},
  ],
  '8': const [
    const {'1': 'state'},
  ],
};

/// Descriptor for `AppState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appStateDescriptor = $convert.base64Decode('CghBcHBTdGF0ZRI/Cg5sb2FkX2FwcF9zdGF0ZRgBIAEoCzIXLmZ1Yi51bml0eS5Mb2FkQXBwU3RhdGVIAFIMbG9hZEFwcFN0YXRlEj4KDWNvdW50ZXJfc3RhdGUYAiABKAsyFy5mdWIudW5pdHkuQ291bnRlclN0YXRlSABSDGNvdW50ZXJTdGF0ZRI7CgxqdW1wZXJfc3RhdGUYAyABKAsyFi5mdWIudW5pdHkuSnVtcGVyU3RhdGVIAFILanVtcGVyU3RhdGVCBwoFc3RhdGU=');
@$core.Deprecated('Use loadAppStateDescriptor instead')
const LoadAppState$json = const {
  '1': 'LoadAppState',
  '2': const [
    const {'1': 'counter', '3': 1, '4': 1, '5': 11, '6': '.fub.unity.LoadAppState.Counter', '9': 0, '10': 'counter'},
    const {'1': 'jumper', '3': 2, '4': 1, '5': 11, '6': '.fub.unity.LoadAppState.Jumper', '9': 0, '10': 'jumper'},
  ],
  '3': const [LoadAppState_Counter$json, LoadAppState_Jumper$json],
  '8': const [
    const {'1': 'app'},
  ],
};

@$core.Deprecated('Use loadAppStateDescriptor instead')
const LoadAppState_Counter$json = const {
  '1': 'Counter',
};

@$core.Deprecated('Use loadAppStateDescriptor instead')
const LoadAppState_Jumper$json = const {
  '1': 'Jumper',
};

/// Descriptor for `LoadAppState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loadAppStateDescriptor = $convert.base64Decode('CgxMb2FkQXBwU3RhdGUSOwoHY291bnRlchgBIAEoCzIfLmZ1Yi51bml0eS5Mb2FkQXBwU3RhdGUuQ291bnRlckgAUgdjb3VudGVyEjgKBmp1bXBlchgCIAEoCzIeLmZ1Yi51bml0eS5Mb2FkQXBwU3RhdGUuSnVtcGVySABSBmp1bXBlchoJCgdDb3VudGVyGggKBkp1bXBlckIFCgNhcHA=');
@$core.Deprecated('Use appActionDescriptor instead')
const AppAction$json = const {
  '1': 'AppAction',
  '2': const [
    const {'1': 'counter_action', '3': 1, '4': 1, '5': 11, '6': '.fub.unity.CounterAction', '9': 0, '10': 'counterAction'},
    const {'1': 'jumper_action', '3': 2, '4': 1, '5': 11, '6': '.fub.unity.JumperAction', '9': 0, '10': 'jumperAction'},
  ],
  '8': const [
    const {'1': 'action'},
  ],
};

/// Descriptor for `AppAction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appActionDescriptor = $convert.base64Decode('CglBcHBBY3Rpb24SQQoOY291bnRlcl9hY3Rpb24YASABKAsyGC5mdWIudW5pdHkuQ291bnRlckFjdGlvbkgAUg1jb3VudGVyQWN0aW9uEj4KDWp1bXBlcl9hY3Rpb24YAiABKAsyFy5mdWIudW5pdHkuSnVtcGVyQWN0aW9uSABSDGp1bXBlckFjdGlvbkIICgZhY3Rpb24=');
