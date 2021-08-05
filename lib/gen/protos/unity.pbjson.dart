///
//  Generated code. Do not modify.
//  source: unity.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use loadSceneRequestDescriptor instead')
const LoadSceneRequest$json = const {
  '1': 'LoadSceneRequest',
  '2': const [
    const {'1': 'scene_name', '3': 1, '4': 1, '5': 9, '10': 'sceneName'},
    const {'1': 'options', '3': 2, '4': 3, '5': 11, '6': '.pbunity.LoadSceneRequest.OptionsEntry', '10': 'options'},
  ],
  '3': const [LoadSceneRequest_OptionsEntry$json],
};

@$core.Deprecated('Use loadSceneRequestDescriptor instead')
const LoadSceneRequest_OptionsEntry$json = const {
  '1': 'OptionsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `LoadSceneRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loadSceneRequestDescriptor = $convert.base64Decode('ChBMb2FkU2NlbmVSZXF1ZXN0Eh0KCnNjZW5lX25hbWUYASABKAlSCXNjZW5lTmFtZRJACgdvcHRpb25zGAIgAygLMiYucGJ1bml0eS5Mb2FkU2NlbmVSZXF1ZXN0Lk9wdGlvbnNFbnRyeVIHb3B0aW9ucxo6CgxPcHRpb25zRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use unloadSceneRequestDescriptor instead')
const UnloadSceneRequest$json = const {
  '1': 'UnloadSceneRequest',
  '2': const [
    const {'1': 'scene_name', '3': 1, '4': 1, '5': 9, '10': 'sceneName'},
  ],
};

/// Descriptor for `UnloadSceneRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unloadSceneRequestDescriptor = $convert.base64Decode('ChJVbmxvYWRTY2VuZVJlcXVlc3QSHQoKc2NlbmVfbmFtZRgBIAEoCVIJc2NlbmVOYW1l');
@$core.Deprecated('Use loadSceneResponseDescriptor instead')
const LoadSceneResponse$json = const {
  '1': 'LoadSceneResponse',
  '2': const [
    const {'1': 'port', '3': 1, '4': 1, '5': 3, '10': 'port'},
  ],
};

/// Descriptor for `LoadSceneResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loadSceneResponseDescriptor = $convert.base64Decode('ChFMb2FkU2NlbmVSZXNwb25zZRISCgRwb3J0GAEgASgDUgRwb3J0');
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
