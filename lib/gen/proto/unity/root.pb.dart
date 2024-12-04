//
//  Generated code. Do not modify.
//  source: unity/root.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'load_app.pb.dart' as $0;
import 'scenes/counter.pb.dart' as $1;

enum PRootState_State {
  loadAppState, 
  counterState, 
  notSet
}

class PRootState extends $pb.GeneratedMessage {
  factory PRootState({
    $0.PLoadAppState? loadAppState,
    $1.PCounterState? counterState,
  }) {
    final $result = create();
    if (loadAppState != null) {
      $result.loadAppState = loadAppState;
    }
    if (counterState != null) {
      $result.counterState = counterState;
    }
    return $result;
  }
  PRootState._() : super();
  factory PRootState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PRootState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, PRootState_State> _PRootState_StateByTag = {
    1 : PRootState_State.loadAppState,
    2 : PRootState_State.counterState,
    0 : PRootState_State.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PRootState', package: const $pb.PackageName(_omitMessageNames ? '' : 'fub.unity'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<$0.PLoadAppState>(1, _omitFieldNames ? '' : 'loadAppState', subBuilder: $0.PLoadAppState.create)
    ..aOM<$1.PCounterState>(2, _omitFieldNames ? '' : 'counterState', subBuilder: $1.PCounterState.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PRootState clone() => PRootState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PRootState copyWith(void Function(PRootState) updates) => super.copyWith((message) => updates(message as PRootState)) as PRootState;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PRootState create() => PRootState._();
  PRootState createEmptyInstance() => create();
  static $pb.PbList<PRootState> createRepeated() => $pb.PbList<PRootState>();
  @$core.pragma('dart2js:noInline')
  static PRootState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PRootState>(create);
  static PRootState? _defaultInstance;

  PRootState_State whichState() => _PRootState_StateByTag[$_whichOneof(0)]!;
  void clearState() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $0.PLoadAppState get loadAppState => $_getN(0);
  @$pb.TagNumber(1)
  set loadAppState($0.PLoadAppState v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLoadAppState() => $_has(0);
  @$pb.TagNumber(1)
  void clearLoadAppState() => clearField(1);
  @$pb.TagNumber(1)
  $0.PLoadAppState ensureLoadAppState() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.PCounterState get counterState => $_getN(1);
  @$pb.TagNumber(2)
  set counterState($1.PCounterState v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCounterState() => $_has(1);
  @$pb.TagNumber(2)
  void clearCounterState() => clearField(2);
  @$pb.TagNumber(2)
  $1.PCounterState ensureCounterState() => $_ensure(1);
}

enum PRootAction_Action {
  loadAppAction, 
  counterAction, 
  notSet
}

class PRootAction extends $pb.GeneratedMessage {
  factory PRootAction({
    $0.PLoadAppAction? loadAppAction,
    $1.PCounterAction? counterAction,
  }) {
    final $result = create();
    if (loadAppAction != null) {
      $result.loadAppAction = loadAppAction;
    }
    if (counterAction != null) {
      $result.counterAction = counterAction;
    }
    return $result;
  }
  PRootAction._() : super();
  factory PRootAction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PRootAction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, PRootAction_Action> _PRootAction_ActionByTag = {
    1 : PRootAction_Action.loadAppAction,
    2 : PRootAction_Action.counterAction,
    0 : PRootAction_Action.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PRootAction', package: const $pb.PackageName(_omitMessageNames ? '' : 'fub.unity'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<$0.PLoadAppAction>(1, _omitFieldNames ? '' : 'loadAppAction', subBuilder: $0.PLoadAppAction.create)
    ..aOM<$1.PCounterAction>(2, _omitFieldNames ? '' : 'counterAction', subBuilder: $1.PCounterAction.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PRootAction clone() => PRootAction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PRootAction copyWith(void Function(PRootAction) updates) => super.copyWith((message) => updates(message as PRootAction)) as PRootAction;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PRootAction create() => PRootAction._();
  PRootAction createEmptyInstance() => create();
  static $pb.PbList<PRootAction> createRepeated() => $pb.PbList<PRootAction>();
  @$core.pragma('dart2js:noInline')
  static PRootAction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PRootAction>(create);
  static PRootAction? _defaultInstance;

  PRootAction_Action whichAction() => _PRootAction_ActionByTag[$_whichOneof(0)]!;
  void clearAction() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $0.PLoadAppAction get loadAppAction => $_getN(0);
  @$pb.TagNumber(1)
  set loadAppAction($0.PLoadAppAction v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLoadAppAction() => $_has(0);
  @$pb.TagNumber(1)
  void clearLoadAppAction() => clearField(1);
  @$pb.TagNumber(1)
  $0.PLoadAppAction ensureLoadAppAction() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.PCounterAction get counterAction => $_getN(1);
  @$pb.TagNumber(2)
  set counterAction($1.PCounterAction v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCounterAction() => $_has(1);
  @$pb.TagNumber(2)
  void clearCounterAction() => clearField(2);
  @$pb.TagNumber(2)
  $1.PCounterAction ensureCounterAction() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
