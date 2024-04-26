///
//  Generated code. Do not modify.
//  source: unity/app.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'scenes/counter.pb.dart' as $0;

enum PAppState_State {
  loadAppState, 
  counterState, 
  notSet
}

class PAppState extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, PAppState_State> _PAppState_StateByTag = {
    1 : PAppState_State.loadAppState,
    2 : PAppState_State.counterState,
    0 : PAppState_State.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PAppState', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'fub.unity'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<PLoadSceneState>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'loadAppState', subBuilder: PLoadSceneState.create)
    ..aOM<$0.PCounterState>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'counterState', subBuilder: $0.PCounterState.create)
    ..hasRequiredFields = false
  ;

  PAppState._() : super();
  factory PAppState({
    PLoadSceneState? loadAppState,
    $0.PCounterState? counterState,
  }) {
    final _result = create();
    if (loadAppState != null) {
      _result.loadAppState = loadAppState;
    }
    if (counterState != null) {
      _result.counterState = counterState;
    }
    return _result;
  }
  factory PAppState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PAppState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PAppState clone() => PAppState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PAppState copyWith(void Function(PAppState) updates) => super.copyWith((message) => updates(message as PAppState)) as PAppState; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PAppState create() => PAppState._();
  PAppState createEmptyInstance() => create();
  static $pb.PbList<PAppState> createRepeated() => $pb.PbList<PAppState>();
  @$core.pragma('dart2js:noInline')
  static PAppState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PAppState>(create);
  static PAppState? _defaultInstance;

  PAppState_State whichState() => _PAppState_StateByTag[$_whichOneof(0)]!;
  void clearState() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  PLoadSceneState get loadAppState => $_getN(0);
  @$pb.TagNumber(1)
  set loadAppState(PLoadSceneState v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLoadAppState() => $_has(0);
  @$pb.TagNumber(1)
  void clearLoadAppState() => clearField(1);
  @$pb.TagNumber(1)
  PLoadSceneState ensureLoadAppState() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.PCounterState get counterState => $_getN(1);
  @$pb.TagNumber(2)
  set counterState($0.PCounterState v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCounterState() => $_has(1);
  @$pb.TagNumber(2)
  void clearCounterState() => clearField(2);
  @$pb.TagNumber(2)
  $0.PCounterState ensureCounterState() => $_ensure(1);
}

class PLoadSceneState_System extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PLoadSceneState.System', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'fub.unity'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  PLoadSceneState_System._() : super();
  factory PLoadSceneState_System() => create();
  factory PLoadSceneState_System.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PLoadSceneState_System.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PLoadSceneState_System clone() => PLoadSceneState_System()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PLoadSceneState_System copyWith(void Function(PLoadSceneState_System) updates) => super.copyWith((message) => updates(message as PLoadSceneState_System)) as PLoadSceneState_System; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PLoadSceneState_System create() => PLoadSceneState_System._();
  PLoadSceneState_System createEmptyInstance() => create();
  static $pb.PbList<PLoadSceneState_System> createRepeated() => $pb.PbList<PLoadSceneState_System>();
  @$core.pragma('dart2js:noInline')
  static PLoadSceneState_System getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PLoadSceneState_System>(create);
  static PLoadSceneState_System? _defaultInstance;
}

class PLoadSceneState_Counter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PLoadSceneState.Counter', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'fub.unity'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  PLoadSceneState_Counter._() : super();
  factory PLoadSceneState_Counter() => create();
  factory PLoadSceneState_Counter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PLoadSceneState_Counter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PLoadSceneState_Counter clone() => PLoadSceneState_Counter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PLoadSceneState_Counter copyWith(void Function(PLoadSceneState_Counter) updates) => super.copyWith((message) => updates(message as PLoadSceneState_Counter)) as PLoadSceneState_Counter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PLoadSceneState_Counter create() => PLoadSceneState_Counter._();
  PLoadSceneState_Counter createEmptyInstance() => create();
  static $pb.PbList<PLoadSceneState_Counter> createRepeated() => $pb.PbList<PLoadSceneState_Counter>();
  @$core.pragma('dart2js:noInline')
  static PLoadSceneState_Counter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PLoadSceneState_Counter>(create);
  static PLoadSceneState_Counter? _defaultInstance;
}

enum PLoadSceneState_App {
  system, 
  counter, 
  notSet
}

class PLoadSceneState extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, PLoadSceneState_App> _PLoadSceneState_AppByTag = {
    1 : PLoadSceneState_App.system,
    2 : PLoadSceneState_App.counter,
    0 : PLoadSceneState_App.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PLoadSceneState', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'fub.unity'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<PLoadSceneState_System>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'system', subBuilder: PLoadSceneState_System.create)
    ..aOM<PLoadSceneState_Counter>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'counter', subBuilder: PLoadSceneState_Counter.create)
    ..hasRequiredFields = false
  ;

  PLoadSceneState._() : super();
  factory PLoadSceneState({
    PLoadSceneState_System? system,
    PLoadSceneState_Counter? counter,
  }) {
    final _result = create();
    if (system != null) {
      _result.system = system;
    }
    if (counter != null) {
      _result.counter = counter;
    }
    return _result;
  }
  factory PLoadSceneState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PLoadSceneState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PLoadSceneState clone() => PLoadSceneState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PLoadSceneState copyWith(void Function(PLoadSceneState) updates) => super.copyWith((message) => updates(message as PLoadSceneState)) as PLoadSceneState; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PLoadSceneState create() => PLoadSceneState._();
  PLoadSceneState createEmptyInstance() => create();
  static $pb.PbList<PLoadSceneState> createRepeated() => $pb.PbList<PLoadSceneState>();
  @$core.pragma('dart2js:noInline')
  static PLoadSceneState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PLoadSceneState>(create);
  static PLoadSceneState? _defaultInstance;

  PLoadSceneState_App whichApp() => _PLoadSceneState_AppByTag[$_whichOneof(0)]!;
  void clearApp() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  PLoadSceneState_System get system => $_getN(0);
  @$pb.TagNumber(1)
  set system(PLoadSceneState_System v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSystem() => $_has(0);
  @$pb.TagNumber(1)
  void clearSystem() => clearField(1);
  @$pb.TagNumber(1)
  PLoadSceneState_System ensureSystem() => $_ensure(0);

  @$pb.TagNumber(2)
  PLoadSceneState_Counter get counter => $_getN(1);
  @$pb.TagNumber(2)
  set counter(PLoadSceneState_Counter v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCounter() => $_has(1);
  @$pb.TagNumber(2)
  void clearCounter() => clearField(2);
  @$pb.TagNumber(2)
  PLoadSceneState_Counter ensureCounter() => $_ensure(1);
}

class PLoadAppAction_Counter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PLoadAppAction.Counter', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'fub.unity'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  PLoadAppAction_Counter._() : super();
  factory PLoadAppAction_Counter() => create();
  factory PLoadAppAction_Counter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PLoadAppAction_Counter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PLoadAppAction_Counter clone() => PLoadAppAction_Counter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PLoadAppAction_Counter copyWith(void Function(PLoadAppAction_Counter) updates) => super.copyWith((message) => updates(message as PLoadAppAction_Counter)) as PLoadAppAction_Counter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PLoadAppAction_Counter create() => PLoadAppAction_Counter._();
  PLoadAppAction_Counter createEmptyInstance() => create();
  static $pb.PbList<PLoadAppAction_Counter> createRepeated() => $pb.PbList<PLoadAppAction_Counter>();
  @$core.pragma('dart2js:noInline')
  static PLoadAppAction_Counter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PLoadAppAction_Counter>(create);
  static PLoadAppAction_Counter? _defaultInstance;
}

enum PLoadAppAction_Action {
  counter, 
  notSet
}

class PLoadAppAction extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, PLoadAppAction_Action> _PLoadAppAction_ActionByTag = {
    1 : PLoadAppAction_Action.counter,
    0 : PLoadAppAction_Action.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PLoadAppAction', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'fub.unity'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<PLoadAppAction_Counter>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'counter', subBuilder: PLoadAppAction_Counter.create)
    ..hasRequiredFields = false
  ;

  PLoadAppAction._() : super();
  factory PLoadAppAction({
    PLoadAppAction_Counter? counter,
  }) {
    final _result = create();
    if (counter != null) {
      _result.counter = counter;
    }
    return _result;
  }
  factory PLoadAppAction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PLoadAppAction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PLoadAppAction clone() => PLoadAppAction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PLoadAppAction copyWith(void Function(PLoadAppAction) updates) => super.copyWith((message) => updates(message as PLoadAppAction)) as PLoadAppAction; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PLoadAppAction create() => PLoadAppAction._();
  PLoadAppAction createEmptyInstance() => create();
  static $pb.PbList<PLoadAppAction> createRepeated() => $pb.PbList<PLoadAppAction>();
  @$core.pragma('dart2js:noInline')
  static PLoadAppAction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PLoadAppAction>(create);
  static PLoadAppAction? _defaultInstance;

  PLoadAppAction_Action whichAction() => _PLoadAppAction_ActionByTag[$_whichOneof(0)]!;
  void clearAction() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  PLoadAppAction_Counter get counter => $_getN(0);
  @$pb.TagNumber(1)
  set counter(PLoadAppAction_Counter v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCounter() => $_has(0);
  @$pb.TagNumber(1)
  void clearCounter() => clearField(1);
  @$pb.TagNumber(1)
  PLoadAppAction_Counter ensureCounter() => $_ensure(0);
}

enum PAppAction_Action {
  loadAppAction, 
  counterAction, 
  notSet
}

class PAppAction extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, PAppAction_Action> _PAppAction_ActionByTag = {
    1 : PAppAction_Action.loadAppAction,
    2 : PAppAction_Action.counterAction,
    0 : PAppAction_Action.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PAppAction', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'fub.unity'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<PLoadAppAction>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'loadAppAction', subBuilder: PLoadAppAction.create)
    ..aOM<$0.PCounterAction>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'counterAction', subBuilder: $0.PCounterAction.create)
    ..hasRequiredFields = false
  ;

  PAppAction._() : super();
  factory PAppAction({
    PLoadAppAction? loadAppAction,
    $0.PCounterAction? counterAction,
  }) {
    final _result = create();
    if (loadAppAction != null) {
      _result.loadAppAction = loadAppAction;
    }
    if (counterAction != null) {
      _result.counterAction = counterAction;
    }
    return _result;
  }
  factory PAppAction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PAppAction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PAppAction clone() => PAppAction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PAppAction copyWith(void Function(PAppAction) updates) => super.copyWith((message) => updates(message as PAppAction)) as PAppAction; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PAppAction create() => PAppAction._();
  PAppAction createEmptyInstance() => create();
  static $pb.PbList<PAppAction> createRepeated() => $pb.PbList<PAppAction>();
  @$core.pragma('dart2js:noInline')
  static PAppAction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PAppAction>(create);
  static PAppAction? _defaultInstance;

  PAppAction_Action whichAction() => _PAppAction_ActionByTag[$_whichOneof(0)]!;
  void clearAction() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  PLoadAppAction get loadAppAction => $_getN(0);
  @$pb.TagNumber(1)
  set loadAppAction(PLoadAppAction v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLoadAppAction() => $_has(0);
  @$pb.TagNumber(1)
  void clearLoadAppAction() => clearField(1);
  @$pb.TagNumber(1)
  PLoadAppAction ensureLoadAppAction() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.PCounterAction get counterAction => $_getN(1);
  @$pb.TagNumber(2)
  set counterAction($0.PCounterAction v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCounterAction() => $_has(1);
  @$pb.TagNumber(2)
  void clearCounterAction() => clearField(2);
  @$pb.TagNumber(2)
  $0.PCounterAction ensureCounterAction() => $_ensure(1);
}

