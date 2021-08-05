///
//  Generated code. Do not modify.
//  source: unity.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class LoadSceneRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoadSceneRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pbunity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sceneName')
    ..m<$core.String, $core.String>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'options', entryClassName: 'LoadSceneRequest.OptionsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pbunity'))
    ..hasRequiredFields = false
  ;

  LoadSceneRequest._() : super();
  factory LoadSceneRequest({
    $core.String? sceneName,
    $core.Map<$core.String, $core.String>? options,
  }) {
    final _result = create();
    if (sceneName != null) {
      _result.sceneName = sceneName;
    }
    if (options != null) {
      _result.options.addAll(options);
    }
    return _result;
  }
  factory LoadSceneRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoadSceneRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoadSceneRequest clone() => LoadSceneRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoadSceneRequest copyWith(void Function(LoadSceneRequest) updates) => super.copyWith((message) => updates(message as LoadSceneRequest)) as LoadSceneRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoadSceneRequest create() => LoadSceneRequest._();
  LoadSceneRequest createEmptyInstance() => create();
  static $pb.PbList<LoadSceneRequest> createRepeated() => $pb.PbList<LoadSceneRequest>();
  @$core.pragma('dart2js:noInline')
  static LoadSceneRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoadSceneRequest>(create);
  static LoadSceneRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sceneName => $_getSZ(0);
  @$pb.TagNumber(1)
  set sceneName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSceneName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSceneName() => clearField(1);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get options => $_getMap(1);
}

class UnloadSceneRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UnloadSceneRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pbunity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sceneName')
    ..hasRequiredFields = false
  ;

  UnloadSceneRequest._() : super();
  factory UnloadSceneRequest({
    $core.String? sceneName,
  }) {
    final _result = create();
    if (sceneName != null) {
      _result.sceneName = sceneName;
    }
    return _result;
  }
  factory UnloadSceneRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnloadSceneRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnloadSceneRequest clone() => UnloadSceneRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnloadSceneRequest copyWith(void Function(UnloadSceneRequest) updates) => super.copyWith((message) => updates(message as UnloadSceneRequest)) as UnloadSceneRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnloadSceneRequest create() => UnloadSceneRequest._();
  UnloadSceneRequest createEmptyInstance() => create();
  static $pb.PbList<UnloadSceneRequest> createRepeated() => $pb.PbList<UnloadSceneRequest>();
  @$core.pragma('dart2js:noInline')
  static UnloadSceneRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnloadSceneRequest>(create);
  static UnloadSceneRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sceneName => $_getSZ(0);
  @$pb.TagNumber(1)
  set sceneName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSceneName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSceneName() => clearField(1);
}

class LoadSceneResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoadSceneResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pbunity'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'port')
    ..hasRequiredFields = false
  ;

  LoadSceneResponse._() : super();
  factory LoadSceneResponse({
    $fixnum.Int64? port,
  }) {
    final _result = create();
    if (port != null) {
      _result.port = port;
    }
    return _result;
  }
  factory LoadSceneResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoadSceneResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoadSceneResponse clone() => LoadSceneResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoadSceneResponse copyWith(void Function(LoadSceneResponse) updates) => super.copyWith((message) => updates(message as LoadSceneResponse)) as LoadSceneResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoadSceneResponse create() => LoadSceneResponse._();
  LoadSceneResponse createEmptyInstance() => create();
  static $pb.PbList<LoadSceneResponse> createRepeated() => $pb.PbList<LoadSceneResponse>();
  @$core.pragma('dart2js:noInline')
  static LoadSceneResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoadSceneResponse>(create);
  static LoadSceneResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get port => $_getI64(0);
  @$pb.TagNumber(1)
  set port($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPort() => $_has(0);
  @$pb.TagNumber(1)
  void clearPort() => clearField(1);
}

class Vector3 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Vector3', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pbunity'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'x', $pb.PbFieldType.OF)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'y', $pb.PbFieldType.OF)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'z', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  Vector3._() : super();
  factory Vector3({
    $core.double? x,
    $core.double? y,
    $core.double? z,
  }) {
    final _result = create();
    if (x != null) {
      _result.x = x;
    }
    if (y != null) {
      _result.y = y;
    }
    if (z != null) {
      _result.z = z;
    }
    return _result;
  }
  factory Vector3.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Vector3.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Vector3 clone() => Vector3()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Vector3 copyWith(void Function(Vector3) updates) => super.copyWith((message) => updates(message as Vector3)) as Vector3; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Vector3 create() => Vector3._();
  Vector3 createEmptyInstance() => create();
  static $pb.PbList<Vector3> createRepeated() => $pb.PbList<Vector3>();
  @$core.pragma('dart2js:noInline')
  static Vector3 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Vector3>(create);
  static Vector3? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get x => $_getN(0);
  @$pb.TagNumber(1)
  set x($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get y => $_getN(1);
  @$pb.TagNumber(2)
  set y($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get z => $_getN(2);
  @$pb.TagNumber(3)
  set z($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasZ() => $_has(2);
  @$pb.TagNumber(3)
  void clearZ() => clearField(3);
}

class Vector4 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Vector4', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pbunity'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'x', $pb.PbFieldType.OF)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'y', $pb.PbFieldType.OF)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'z', $pb.PbFieldType.OF)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'w', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  Vector4._() : super();
  factory Vector4({
    $core.double? x,
    $core.double? y,
    $core.double? z,
    $core.double? w,
  }) {
    final _result = create();
    if (x != null) {
      _result.x = x;
    }
    if (y != null) {
      _result.y = y;
    }
    if (z != null) {
      _result.z = z;
    }
    if (w != null) {
      _result.w = w;
    }
    return _result;
  }
  factory Vector4.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Vector4.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Vector4 clone() => Vector4()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Vector4 copyWith(void Function(Vector4) updates) => super.copyWith((message) => updates(message as Vector4)) as Vector4; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Vector4 create() => Vector4._();
  Vector4 createEmptyInstance() => create();
  static $pb.PbList<Vector4> createRepeated() => $pb.PbList<Vector4>();
  @$core.pragma('dart2js:noInline')
  static Vector4 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Vector4>(create);
  static Vector4? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get x => $_getN(0);
  @$pb.TagNumber(1)
  set x($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get y => $_getN(1);
  @$pb.TagNumber(2)
  set y($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get z => $_getN(2);
  @$pb.TagNumber(3)
  set z($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasZ() => $_has(2);
  @$pb.TagNumber(3)
  void clearZ() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get w => $_getN(3);
  @$pb.TagNumber(4)
  set w($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasW() => $_has(3);
  @$pb.TagNumber(4)
  void clearW() => clearField(4);
}

