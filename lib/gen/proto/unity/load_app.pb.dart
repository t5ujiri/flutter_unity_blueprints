//
//  Generated code. Do not modify.
//  source: unity/load_app.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class PLoadAppState_None extends $pb.GeneratedMessage {
  factory PLoadAppState_None() => create();
  PLoadAppState_None._() : super();
  factory PLoadAppState_None.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PLoadAppState_None.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PLoadAppState.None', package: const $pb.PackageName(_omitMessageNames ? '' : 'fub.unity'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PLoadAppState_None clone() => PLoadAppState_None()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PLoadAppState_None copyWith(void Function(PLoadAppState_None) updates) => super.copyWith((message) => updates(message as PLoadAppState_None)) as PLoadAppState_None;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PLoadAppState_None create() => PLoadAppState_None._();
  PLoadAppState_None createEmptyInstance() => create();
  static $pb.PbList<PLoadAppState_None> createRepeated() => $pb.PbList<PLoadAppState_None>();
  @$core.pragma('dart2js:noInline')
  static PLoadAppState_None getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PLoadAppState_None>(create);
  static PLoadAppState_None? _defaultInstance;
}

class PLoadAppState_Counter extends $pb.GeneratedMessage {
  factory PLoadAppState_Counter() => create();
  PLoadAppState_Counter._() : super();
  factory PLoadAppState_Counter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PLoadAppState_Counter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PLoadAppState.Counter', package: const $pb.PackageName(_omitMessageNames ? '' : 'fub.unity'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PLoadAppState_Counter clone() => PLoadAppState_Counter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PLoadAppState_Counter copyWith(void Function(PLoadAppState_Counter) updates) => super.copyWith((message) => updates(message as PLoadAppState_Counter)) as PLoadAppState_Counter;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PLoadAppState_Counter create() => PLoadAppState_Counter._();
  PLoadAppState_Counter createEmptyInstance() => create();
  static $pb.PbList<PLoadAppState_Counter> createRepeated() => $pb.PbList<PLoadAppState_Counter>();
  @$core.pragma('dart2js:noInline')
  static PLoadAppState_Counter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PLoadAppState_Counter>(create);
  static PLoadAppState_Counter? _defaultInstance;
}

enum PLoadAppState_App {
  none, 
  counter, 
  notSet
}

class PLoadAppState extends $pb.GeneratedMessage {
  factory PLoadAppState({
    PLoadAppState_None? none,
    PLoadAppState_Counter? counter,
  }) {
    final $result = create();
    if (none != null) {
      $result.none = none;
    }
    if (counter != null) {
      $result.counter = counter;
    }
    return $result;
  }
  PLoadAppState._() : super();
  factory PLoadAppState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PLoadAppState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, PLoadAppState_App> _PLoadAppState_AppByTag = {
    1 : PLoadAppState_App.none,
    2 : PLoadAppState_App.counter,
    0 : PLoadAppState_App.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PLoadAppState', package: const $pb.PackageName(_omitMessageNames ? '' : 'fub.unity'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<PLoadAppState_None>(1, _omitFieldNames ? '' : 'none', subBuilder: PLoadAppState_None.create)
    ..aOM<PLoadAppState_Counter>(2, _omitFieldNames ? '' : 'counter', subBuilder: PLoadAppState_Counter.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PLoadAppState clone() => PLoadAppState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PLoadAppState copyWith(void Function(PLoadAppState) updates) => super.copyWith((message) => updates(message as PLoadAppState)) as PLoadAppState;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PLoadAppState create() => PLoadAppState._();
  PLoadAppState createEmptyInstance() => create();
  static $pb.PbList<PLoadAppState> createRepeated() => $pb.PbList<PLoadAppState>();
  @$core.pragma('dart2js:noInline')
  static PLoadAppState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PLoadAppState>(create);
  static PLoadAppState? _defaultInstance;

  PLoadAppState_App whichApp() => _PLoadAppState_AppByTag[$_whichOneof(0)]!;
  void clearApp() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  PLoadAppState_None get none => $_getN(0);
  @$pb.TagNumber(1)
  set none(PLoadAppState_None v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNone() => $_has(0);
  @$pb.TagNumber(1)
  void clearNone() => clearField(1);
  @$pb.TagNumber(1)
  PLoadAppState_None ensureNone() => $_ensure(0);

  @$pb.TagNumber(2)
  PLoadAppState_Counter get counter => $_getN(1);
  @$pb.TagNumber(2)
  set counter(PLoadAppState_Counter v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCounter() => $_has(1);
  @$pb.TagNumber(2)
  void clearCounter() => clearField(2);
  @$pb.TagNumber(2)
  PLoadAppState_Counter ensureCounter() => $_ensure(1);
}

class PLoadAppAction_Unload extends $pb.GeneratedMessage {
  factory PLoadAppAction_Unload() => create();
  PLoadAppAction_Unload._() : super();
  factory PLoadAppAction_Unload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PLoadAppAction_Unload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PLoadAppAction.Unload', package: const $pb.PackageName(_omitMessageNames ? '' : 'fub.unity'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PLoadAppAction_Unload clone() => PLoadAppAction_Unload()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PLoadAppAction_Unload copyWith(void Function(PLoadAppAction_Unload) updates) => super.copyWith((message) => updates(message as PLoadAppAction_Unload)) as PLoadAppAction_Unload;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PLoadAppAction_Unload create() => PLoadAppAction_Unload._();
  PLoadAppAction_Unload createEmptyInstance() => create();
  static $pb.PbList<PLoadAppAction_Unload> createRepeated() => $pb.PbList<PLoadAppAction_Unload>();
  @$core.pragma('dart2js:noInline')
  static PLoadAppAction_Unload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PLoadAppAction_Unload>(create);
  static PLoadAppAction_Unload? _defaultInstance;
}

class PLoadAppAction_Counter extends $pb.GeneratedMessage {
  factory PLoadAppAction_Counter() => create();
  PLoadAppAction_Counter._() : super();
  factory PLoadAppAction_Counter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PLoadAppAction_Counter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PLoadAppAction.Counter', package: const $pb.PackageName(_omitMessageNames ? '' : 'fub.unity'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PLoadAppAction_Counter clone() => PLoadAppAction_Counter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PLoadAppAction_Counter copyWith(void Function(PLoadAppAction_Counter) updates) => super.copyWith((message) => updates(message as PLoadAppAction_Counter)) as PLoadAppAction_Counter;

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
  unload, 
  counter, 
  notSet
}

class PLoadAppAction extends $pb.GeneratedMessage {
  factory PLoadAppAction({
    PLoadAppAction_Unload? unload,
    PLoadAppAction_Counter? counter,
  }) {
    final $result = create();
    if (unload != null) {
      $result.unload = unload;
    }
    if (counter != null) {
      $result.counter = counter;
    }
    return $result;
  }
  PLoadAppAction._() : super();
  factory PLoadAppAction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PLoadAppAction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, PLoadAppAction_Action> _PLoadAppAction_ActionByTag = {
    1 : PLoadAppAction_Action.unload,
    2 : PLoadAppAction_Action.counter,
    0 : PLoadAppAction_Action.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PLoadAppAction', package: const $pb.PackageName(_omitMessageNames ? '' : 'fub.unity'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<PLoadAppAction_Unload>(1, _omitFieldNames ? '' : 'unload', subBuilder: PLoadAppAction_Unload.create)
    ..aOM<PLoadAppAction_Counter>(2, _omitFieldNames ? '' : 'counter', subBuilder: PLoadAppAction_Counter.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PLoadAppAction clone() => PLoadAppAction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PLoadAppAction copyWith(void Function(PLoadAppAction) updates) => super.copyWith((message) => updates(message as PLoadAppAction)) as PLoadAppAction;

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
  PLoadAppAction_Unload get unload => $_getN(0);
  @$pb.TagNumber(1)
  set unload(PLoadAppAction_Unload v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUnload() => $_has(0);
  @$pb.TagNumber(1)
  void clearUnload() => clearField(1);
  @$pb.TagNumber(1)
  PLoadAppAction_Unload ensureUnload() => $_ensure(0);

  @$pb.TagNumber(2)
  PLoadAppAction_Counter get counter => $_getN(1);
  @$pb.TagNumber(2)
  set counter(PLoadAppAction_Counter v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCounter() => $_has(1);
  @$pb.TagNumber(2)
  void clearCounter() => clearField(2);
  @$pb.TagNumber(2)
  PLoadAppAction_Counter ensureCounter() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
