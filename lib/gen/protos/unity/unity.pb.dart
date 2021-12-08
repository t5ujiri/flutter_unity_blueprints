///
//  Generated code. Do not modify.
//  source: unity/unity.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'counter.pb.dart' as $0;
import 'jumper.pb.dart' as $1;

enum AppState_State {
  loadAppState, 
  counterState, 
  jumperState, 
  notSet
}

class AppState extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, AppState_State> _AppState_StateByTag = {
    1 : AppState_State.loadAppState,
    2 : AppState_State.counterState,
    3 : AppState_State.jumperState,
    0 : AppState_State.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AppState', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'fub.unity'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<LoadAppState>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'loadAppState', subBuilder: LoadAppState.create)
    ..aOM<$0.CounterState>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'counterState', subBuilder: $0.CounterState.create)
    ..aOM<$1.JumperState>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'jumperState', subBuilder: $1.JumperState.create)
    ..hasRequiredFields = false
  ;

  AppState._() : super();
  factory AppState({
    LoadAppState? loadAppState,
    $0.CounterState? counterState,
    $1.JumperState? jumperState,
  }) {
    final _result = create();
    if (loadAppState != null) {
      _result.loadAppState = loadAppState;
    }
    if (counterState != null) {
      _result.counterState = counterState;
    }
    if (jumperState != null) {
      _result.jumperState = jumperState;
    }
    return _result;
  }
  factory AppState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppState clone() => AppState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppState copyWith(void Function(AppState) updates) => super.copyWith((message) => updates(message as AppState)) as AppState; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppState create() => AppState._();
  AppState createEmptyInstance() => create();
  static $pb.PbList<AppState> createRepeated() => $pb.PbList<AppState>();
  @$core.pragma('dart2js:noInline')
  static AppState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppState>(create);
  static AppState? _defaultInstance;

  AppState_State whichState() => _AppState_StateByTag[$_whichOneof(0)]!;
  void clearState() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  LoadAppState get loadAppState => $_getN(0);
  @$pb.TagNumber(1)
  set loadAppState(LoadAppState v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLoadAppState() => $_has(0);
  @$pb.TagNumber(1)
  void clearLoadAppState() => clearField(1);
  @$pb.TagNumber(1)
  LoadAppState ensureLoadAppState() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.CounterState get counterState => $_getN(1);
  @$pb.TagNumber(2)
  set counterState($0.CounterState v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCounterState() => $_has(1);
  @$pb.TagNumber(2)
  void clearCounterState() => clearField(2);
  @$pb.TagNumber(2)
  $0.CounterState ensureCounterState() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.JumperState get jumperState => $_getN(2);
  @$pb.TagNumber(3)
  set jumperState($1.JumperState v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasJumperState() => $_has(2);
  @$pb.TagNumber(3)
  void clearJumperState() => clearField(3);
  @$pb.TagNumber(3)
  $1.JumperState ensureJumperState() => $_ensure(2);
}

class LoadAppState_Counter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoadAppState.Counter', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'fub.unity'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  LoadAppState_Counter._() : super();
  factory LoadAppState_Counter() => create();
  factory LoadAppState_Counter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoadAppState_Counter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoadAppState_Counter clone() => LoadAppState_Counter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoadAppState_Counter copyWith(void Function(LoadAppState_Counter) updates) => super.copyWith((message) => updates(message as LoadAppState_Counter)) as LoadAppState_Counter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoadAppState_Counter create() => LoadAppState_Counter._();
  LoadAppState_Counter createEmptyInstance() => create();
  static $pb.PbList<LoadAppState_Counter> createRepeated() => $pb.PbList<LoadAppState_Counter>();
  @$core.pragma('dart2js:noInline')
  static LoadAppState_Counter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoadAppState_Counter>(create);
  static LoadAppState_Counter? _defaultInstance;
}

class LoadAppState_Jumper extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoadAppState.Jumper', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'fub.unity'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  LoadAppState_Jumper._() : super();
  factory LoadAppState_Jumper() => create();
  factory LoadAppState_Jumper.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoadAppState_Jumper.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoadAppState_Jumper clone() => LoadAppState_Jumper()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoadAppState_Jumper copyWith(void Function(LoadAppState_Jumper) updates) => super.copyWith((message) => updates(message as LoadAppState_Jumper)) as LoadAppState_Jumper; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoadAppState_Jumper create() => LoadAppState_Jumper._();
  LoadAppState_Jumper createEmptyInstance() => create();
  static $pb.PbList<LoadAppState_Jumper> createRepeated() => $pb.PbList<LoadAppState_Jumper>();
  @$core.pragma('dart2js:noInline')
  static LoadAppState_Jumper getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoadAppState_Jumper>(create);
  static LoadAppState_Jumper? _defaultInstance;
}

enum LoadAppState_App {
  counter, 
  jumper, 
  notSet
}

class LoadAppState extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, LoadAppState_App> _LoadAppState_AppByTag = {
    1 : LoadAppState_App.counter,
    2 : LoadAppState_App.jumper,
    0 : LoadAppState_App.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoadAppState', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'fub.unity'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<LoadAppState_Counter>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'counter', subBuilder: LoadAppState_Counter.create)
    ..aOM<LoadAppState_Jumper>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'jumper', subBuilder: LoadAppState_Jumper.create)
    ..hasRequiredFields = false
  ;

  LoadAppState._() : super();
  factory LoadAppState({
    LoadAppState_Counter? counter,
    LoadAppState_Jumper? jumper,
  }) {
    final _result = create();
    if (counter != null) {
      _result.counter = counter;
    }
    if (jumper != null) {
      _result.jumper = jumper;
    }
    return _result;
  }
  factory LoadAppState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoadAppState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoadAppState clone() => LoadAppState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoadAppState copyWith(void Function(LoadAppState) updates) => super.copyWith((message) => updates(message as LoadAppState)) as LoadAppState; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoadAppState create() => LoadAppState._();
  LoadAppState createEmptyInstance() => create();
  static $pb.PbList<LoadAppState> createRepeated() => $pb.PbList<LoadAppState>();
  @$core.pragma('dart2js:noInline')
  static LoadAppState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoadAppState>(create);
  static LoadAppState? _defaultInstance;

  LoadAppState_App whichApp() => _LoadAppState_AppByTag[$_whichOneof(0)]!;
  void clearApp() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  LoadAppState_Counter get counter => $_getN(0);
  @$pb.TagNumber(1)
  set counter(LoadAppState_Counter v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCounter() => $_has(0);
  @$pb.TagNumber(1)
  void clearCounter() => clearField(1);
  @$pb.TagNumber(1)
  LoadAppState_Counter ensureCounter() => $_ensure(0);

  @$pb.TagNumber(2)
  LoadAppState_Jumper get jumper => $_getN(1);
  @$pb.TagNumber(2)
  set jumper(LoadAppState_Jumper v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasJumper() => $_has(1);
  @$pb.TagNumber(2)
  void clearJumper() => clearField(2);
  @$pb.TagNumber(2)
  LoadAppState_Jumper ensureJumper() => $_ensure(1);
}

enum AppAction_Action {
  counterAction, 
  jumperAction, 
  notSet
}

class AppAction extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, AppAction_Action> _AppAction_ActionByTag = {
    1 : AppAction_Action.counterAction,
    2 : AppAction_Action.jumperAction,
    0 : AppAction_Action.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AppAction', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'fub.unity'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<$0.CounterAction>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'counterAction', subBuilder: $0.CounterAction.create)
    ..aOM<$1.JumperAction>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'jumperAction', subBuilder: $1.JumperAction.create)
    ..hasRequiredFields = false
  ;

  AppAction._() : super();
  factory AppAction({
    $0.CounterAction? counterAction,
    $1.JumperAction? jumperAction,
  }) {
    final _result = create();
    if (counterAction != null) {
      _result.counterAction = counterAction;
    }
    if (jumperAction != null) {
      _result.jumperAction = jumperAction;
    }
    return _result;
  }
  factory AppAction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppAction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppAction clone() => AppAction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppAction copyWith(void Function(AppAction) updates) => super.copyWith((message) => updates(message as AppAction)) as AppAction; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppAction create() => AppAction._();
  AppAction createEmptyInstance() => create();
  static $pb.PbList<AppAction> createRepeated() => $pb.PbList<AppAction>();
  @$core.pragma('dart2js:noInline')
  static AppAction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppAction>(create);
  static AppAction? _defaultInstance;

  AppAction_Action whichAction() => _AppAction_ActionByTag[$_whichOneof(0)]!;
  void clearAction() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $0.CounterAction get counterAction => $_getN(0);
  @$pb.TagNumber(1)
  set counterAction($0.CounterAction v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCounterAction() => $_has(0);
  @$pb.TagNumber(1)
  void clearCounterAction() => clearField(1);
  @$pb.TagNumber(1)
  $0.CounterAction ensureCounterAction() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.JumperAction get jumperAction => $_getN(1);
  @$pb.TagNumber(2)
  set jumperAction($1.JumperAction v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasJumperAction() => $_has(1);
  @$pb.TagNumber(2)
  void clearJumperAction() => clearField(2);
  @$pb.TagNumber(2)
  $1.JumperAction ensureJumperAction() => $_ensure(1);
}

