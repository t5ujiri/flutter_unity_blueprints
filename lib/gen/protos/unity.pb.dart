///
//  Generated code. Do not modify.
//  source: unity.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $0;

enum AppResponse_State {
  loadAppResponse, 
  counterResponse, 
  jumperResponse, 
  notSet
}

class AppResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, AppResponse_State> _AppResponse_StateByTag = {
    1 : AppResponse_State.loadAppResponse,
    2 : AppResponse_State.counterResponse,
    3 : AppResponse_State.jumperResponse,
    0 : AppResponse_State.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AppResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pbunity'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<LoadAppResponse>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'loadAppResponse', subBuilder: LoadAppResponse.create)
    ..aOM<CounterResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'counterResponse', subBuilder: CounterResponse.create)
    ..aOM<JumperResponse>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'jumperResponse', subBuilder: JumperResponse.create)
    ..hasRequiredFields = false
  ;

  AppResponse._() : super();
  factory AppResponse({
    LoadAppResponse? loadAppResponse,
    CounterResponse? counterResponse,
    JumperResponse? jumperResponse,
  }) {
    final _result = create();
    if (loadAppResponse != null) {
      _result.loadAppResponse = loadAppResponse;
    }
    if (counterResponse != null) {
      _result.counterResponse = counterResponse;
    }
    if (jumperResponse != null) {
      _result.jumperResponse = jumperResponse;
    }
    return _result;
  }
  factory AppResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppResponse clone() => AppResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppResponse copyWith(void Function(AppResponse) updates) => super.copyWith((message) => updates(message as AppResponse)) as AppResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppResponse create() => AppResponse._();
  AppResponse createEmptyInstance() => create();
  static $pb.PbList<AppResponse> createRepeated() => $pb.PbList<AppResponse>();
  @$core.pragma('dart2js:noInline')
  static AppResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppResponse>(create);
  static AppResponse? _defaultInstance;

  AppResponse_State whichState() => _AppResponse_StateByTag[$_whichOneof(0)]!;
  void clearState() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  LoadAppResponse get loadAppResponse => $_getN(0);
  @$pb.TagNumber(1)
  set loadAppResponse(LoadAppResponse v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLoadAppResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearLoadAppResponse() => clearField(1);
  @$pb.TagNumber(1)
  LoadAppResponse ensureLoadAppResponse() => $_ensure(0);

  @$pb.TagNumber(2)
  CounterResponse get counterResponse => $_getN(1);
  @$pb.TagNumber(2)
  set counterResponse(CounterResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCounterResponse() => $_has(1);
  @$pb.TagNumber(2)
  void clearCounterResponse() => clearField(2);
  @$pb.TagNumber(2)
  CounterResponse ensureCounterResponse() => $_ensure(1);

  @$pb.TagNumber(3)
  JumperResponse get jumperResponse => $_getN(2);
  @$pb.TagNumber(3)
  set jumperResponse(JumperResponse v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasJumperResponse() => $_has(2);
  @$pb.TagNumber(3)
  void clearJumperResponse() => clearField(3);
  @$pb.TagNumber(3)
  JumperResponse ensureJumperResponse() => $_ensure(2);
}

class LoadAppResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoadAppResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pbunity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appName')
    ..hasRequiredFields = false
  ;

  LoadAppResponse._() : super();
  factory LoadAppResponse({
    $core.String? appName,
  }) {
    final _result = create();
    if (appName != null) {
      _result.appName = appName;
    }
    return _result;
  }
  factory LoadAppResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoadAppResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoadAppResponse clone() => LoadAppResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoadAppResponse copyWith(void Function(LoadAppResponse) updates) => super.copyWith((message) => updates(message as LoadAppResponse)) as LoadAppResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoadAppResponse create() => LoadAppResponse._();
  LoadAppResponse createEmptyInstance() => create();
  static $pb.PbList<LoadAppResponse> createRepeated() => $pb.PbList<LoadAppResponse>();
  @$core.pragma('dart2js:noInline')
  static LoadAppResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoadAppResponse>(create);
  static LoadAppResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get appName => $_getSZ(0);
  @$pb.TagNumber(1)
  set appName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAppName() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppName() => clearField(1);
}

class CounterResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CounterResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pbunity'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'count')
    ..hasRequiredFields = false
  ;

  CounterResponse._() : super();
  factory CounterResponse({
    $fixnum.Int64? count,
  }) {
    final _result = create();
    if (count != null) {
      _result.count = count;
    }
    return _result;
  }
  factory CounterResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CounterResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CounterResponse clone() => CounterResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CounterResponse copyWith(void Function(CounterResponse) updates) => super.copyWith((message) => updates(message as CounterResponse)) as CounterResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CounterResponse create() => CounterResponse._();
  CounterResponse createEmptyInstance() => create();
  static $pb.PbList<CounterResponse> createRepeated() => $pb.PbList<CounterResponse>();
  @$core.pragma('dart2js:noInline')
  static CounterResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CounterResponse>(create);
  static CounterResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get count => $_getI64(0);
  @$pb.TagNumber(1)
  set count($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearCount() => clearField(1);
}

class JumperResponse_JumperController extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'JumperResponse.JumperController', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pbunity'), createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'triggerJump', subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false
  ;

  JumperResponse_JumperController._() : super();
  factory JumperResponse_JumperController({
    $0.Timestamp? triggerJump,
  }) {
    final _result = create();
    if (triggerJump != null) {
      _result.triggerJump = triggerJump;
    }
    return _result;
  }
  factory JumperResponse_JumperController.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JumperResponse_JumperController.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JumperResponse_JumperController clone() => JumperResponse_JumperController()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JumperResponse_JumperController copyWith(void Function(JumperResponse_JumperController) updates) => super.copyWith((message) => updates(message as JumperResponse_JumperController)) as JumperResponse_JumperController; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JumperResponse_JumperController create() => JumperResponse_JumperController._();
  JumperResponse_JumperController createEmptyInstance() => create();
  static $pb.PbList<JumperResponse_JumperController> createRepeated() => $pb.PbList<JumperResponse_JumperController>();
  @$core.pragma('dart2js:noInline')
  static JumperResponse_JumperController getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JumperResponse_JumperController>(create);
  static JumperResponse_JumperController? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Timestamp get triggerJump => $_getN(0);
  @$pb.TagNumber(1)
  set triggerJump($0.Timestamp v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTriggerJump() => $_has(0);
  @$pb.TagNumber(1)
  void clearTriggerJump() => clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureTriggerJump() => $_ensure(0);
}

class JumperResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'JumperResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pbunity'), createEmptyInstance: create)
    ..aOM<JumperResponse_JumperController>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'controller', subBuilder: JumperResponse_JumperController.create)
    ..hasRequiredFields = false
  ;

  JumperResponse._() : super();
  factory JumperResponse({
    JumperResponse_JumperController? controller,
  }) {
    final _result = create();
    if (controller != null) {
      _result.controller = controller;
    }
    return _result;
  }
  factory JumperResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JumperResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JumperResponse clone() => JumperResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JumperResponse copyWith(void Function(JumperResponse) updates) => super.copyWith((message) => updates(message as JumperResponse)) as JumperResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JumperResponse create() => JumperResponse._();
  JumperResponse createEmptyInstance() => create();
  static $pb.PbList<JumperResponse> createRepeated() => $pb.PbList<JumperResponse>();
  @$core.pragma('dart2js:noInline')
  static JumperResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JumperResponse>(create);
  static JumperResponse? _defaultInstance;

  @$pb.TagNumber(1)
  JumperResponse_JumperController get controller => $_getN(0);
  @$pb.TagNumber(1)
  set controller(JumperResponse_JumperController v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasController() => $_has(0);
  @$pb.TagNumber(1)
  void clearController() => clearField(1);
  @$pb.TagNumber(1)
  JumperResponse_JumperController ensureController() => $_ensure(0);
}

enum AppRequest_Request {
  jumperRequest, 
  notSet
}

class AppRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, AppRequest_Request> _AppRequest_RequestByTag = {
    1 : AppRequest_Request.jumperRequest,
    0 : AppRequest_Request.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AppRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pbunity'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<JumperRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'jumperRequest', subBuilder: JumperRequest.create)
    ..hasRequiredFields = false
  ;

  AppRequest._() : super();
  factory AppRequest({
    JumperRequest? jumperRequest,
  }) {
    final _result = create();
    if (jumperRequest != null) {
      _result.jumperRequest = jumperRequest;
    }
    return _result;
  }
  factory AppRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppRequest clone() => AppRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppRequest copyWith(void Function(AppRequest) updates) => super.copyWith((message) => updates(message as AppRequest)) as AppRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppRequest create() => AppRequest._();
  AppRequest createEmptyInstance() => create();
  static $pb.PbList<AppRequest> createRepeated() => $pb.PbList<AppRequest>();
  @$core.pragma('dart2js:noInline')
  static AppRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppRequest>(create);
  static AppRequest? _defaultInstance;

  AppRequest_Request whichRequest() => _AppRequest_RequestByTag[$_whichOneof(0)]!;
  void clearRequest() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  JumperRequest get jumperRequest => $_getN(0);
  @$pb.TagNumber(1)
  set jumperRequest(JumperRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasJumperRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearJumperRequest() => clearField(1);
  @$pb.TagNumber(1)
  JumperRequest ensureJumperRequest() => $_ensure(0);
}

class JumperRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'JumperRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pbunity'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'canJump')
    ..aOM<Vector3>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'position', subBuilder: Vector3.create)
    ..hasRequiredFields = false
  ;

  JumperRequest._() : super();
  factory JumperRequest({
    $core.bool? canJump,
    Vector3? position,
  }) {
    final _result = create();
    if (canJump != null) {
      _result.canJump = canJump;
    }
    if (position != null) {
      _result.position = position;
    }
    return _result;
  }
  factory JumperRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JumperRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JumperRequest clone() => JumperRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JumperRequest copyWith(void Function(JumperRequest) updates) => super.copyWith((message) => updates(message as JumperRequest)) as JumperRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JumperRequest create() => JumperRequest._();
  JumperRequest createEmptyInstance() => create();
  static $pb.PbList<JumperRequest> createRepeated() => $pb.PbList<JumperRequest>();
  @$core.pragma('dart2js:noInline')
  static JumperRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JumperRequest>(create);
  static JumperRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get canJump => $_getBF(0);
  @$pb.TagNumber(1)
  set canJump($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCanJump() => $_has(0);
  @$pb.TagNumber(1)
  void clearCanJump() => clearField(1);

  @$pb.TagNumber(2)
  Vector3 get position => $_getN(1);
  @$pb.TagNumber(2)
  set position(Vector3 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPosition() => $_has(1);
  @$pb.TagNumber(2)
  void clearPosition() => clearField(2);
  @$pb.TagNumber(2)
  Vector3 ensurePosition() => $_ensure(1);
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

class UnityServiceApi {
  $pb.RpcClient _client;
  UnityServiceApi(this._client);

  $async.Future<AppResponse> sync($pb.ClientContext? ctx, AppRequest request) {
    var emptyResponse = AppResponse();
    return _client.invoke<AppResponse>(ctx, 'UnityService', 'Sync', request, emptyResponse);
  }
}

