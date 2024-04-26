///
//  Generated code. Do not modify.
//  source: unity/app.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use pAppStateDescriptor instead')
const PAppState$json = const {
  '1': 'PAppState',
  '2': const [
    const {'1': 'load_app_state', '3': 1, '4': 1, '5': 11, '6': '.fub.unity.PLoadSceneState', '9': 0, '10': 'loadAppState'},
    const {'1': 'counter_state', '3': 2, '4': 1, '5': 11, '6': '.fub.unity.PCounterState', '9': 0, '10': 'counterState'},
  ],
  '8': const [
    const {'1': 'state'},
  ],
};

/// Descriptor for `PAppState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pAppStateDescriptor = $convert.base64Decode('CglQQXBwU3RhdGUSQgoObG9hZF9hcHBfc3RhdGUYASABKAsyGi5mdWIudW5pdHkuUExvYWRTY2VuZVN0YXRlSABSDGxvYWRBcHBTdGF0ZRI/Cg1jb3VudGVyX3N0YXRlGAIgASgLMhguZnViLnVuaXR5LlBDb3VudGVyU3RhdGVIAFIMY291bnRlclN0YXRlQgcKBXN0YXRl');
@$core.Deprecated('Use pLoadSceneStateDescriptor instead')
const PLoadSceneState$json = const {
  '1': 'PLoadSceneState',
  '2': const [
    const {'1': 'system', '3': 1, '4': 1, '5': 11, '6': '.fub.unity.PLoadSceneState.System', '9': 0, '10': 'system'},
    const {'1': 'counter', '3': 2, '4': 1, '5': 11, '6': '.fub.unity.PLoadSceneState.Counter', '9': 0, '10': 'counter'},
  ],
  '3': const [PLoadSceneState_System$json, PLoadSceneState_Counter$json],
  '8': const [
    const {'1': 'app'},
  ],
};

@$core.Deprecated('Use pLoadSceneStateDescriptor instead')
const PLoadSceneState_System$json = const {
  '1': 'System',
};

@$core.Deprecated('Use pLoadSceneStateDescriptor instead')
const PLoadSceneState_Counter$json = const {
  '1': 'Counter',
};

/// Descriptor for `PLoadSceneState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pLoadSceneStateDescriptor = $convert.base64Decode('Cg9QTG9hZFNjZW5lU3RhdGUSOwoGc3lzdGVtGAEgASgLMiEuZnViLnVuaXR5LlBMb2FkU2NlbmVTdGF0ZS5TeXN0ZW1IAFIGc3lzdGVtEj4KB2NvdW50ZXIYAiABKAsyIi5mdWIudW5pdHkuUExvYWRTY2VuZVN0YXRlLkNvdW50ZXJIAFIHY291bnRlchoICgZTeXN0ZW0aCQoHQ291bnRlckIFCgNhcHA=');
@$core.Deprecated('Use pLoadAppActionDescriptor instead')
const PLoadAppAction$json = const {
  '1': 'PLoadAppAction',
  '2': const [
    const {'1': 'counter', '3': 1, '4': 1, '5': 11, '6': '.fub.unity.PLoadAppAction.Counter', '9': 0, '10': 'counter'},
  ],
  '3': const [PLoadAppAction_Counter$json],
  '8': const [
    const {'1': 'action'},
  ],
};

@$core.Deprecated('Use pLoadAppActionDescriptor instead')
const PLoadAppAction_Counter$json = const {
  '1': 'Counter',
};

/// Descriptor for `PLoadAppAction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pLoadAppActionDescriptor = $convert.base64Decode('Cg5QTG9hZEFwcEFjdGlvbhI9Cgdjb3VudGVyGAEgASgLMiEuZnViLnVuaXR5LlBMb2FkQXBwQWN0aW9uLkNvdW50ZXJIAFIHY291bnRlchoJCgdDb3VudGVyQggKBmFjdGlvbg==');
@$core.Deprecated('Use pAppActionDescriptor instead')
const PAppAction$json = const {
  '1': 'PAppAction',
  '2': const [
    const {'1': 'load_app_action', '3': 1, '4': 1, '5': 11, '6': '.fub.unity.PLoadAppAction', '9': 0, '10': 'loadAppAction'},
    const {'1': 'counter_action', '3': 2, '4': 1, '5': 11, '6': '.fub.unity.PCounterAction', '9': 0, '10': 'counterAction'},
  ],
  '8': const [
    const {'1': 'action'},
  ],
};

/// Descriptor for `PAppAction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pAppActionDescriptor = $convert.base64Decode('CgpQQXBwQWN0aW9uEkMKD2xvYWRfYXBwX2FjdGlvbhgBIAEoCzIZLmZ1Yi51bml0eS5QTG9hZEFwcEFjdGlvbkgAUg1sb2FkQXBwQWN0aW9uEkIKDmNvdW50ZXJfYWN0aW9uGAIgASgLMhkuZnViLnVuaXR5LlBDb3VudGVyQWN0aW9uSABSDWNvdW50ZXJBY3Rpb25CCAoGYWN0aW9u');
