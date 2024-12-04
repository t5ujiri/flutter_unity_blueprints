//
//  Generated code. Do not modify.
//  source: unity/scenes/counter.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class PCounterState extends $pb.GeneratedMessage {
  factory PCounterState({
    $core.int? count,
  }) {
    final $result = create();
    if (count != null) {
      $result.count = count;
    }
    return $result;
  }
  PCounterState._() : super();
  factory PCounterState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PCounterState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PCounterState', package: const $pb.PackageName(_omitMessageNames ? '' : 'fub.unity.scenes'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'count', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PCounterState clone() => PCounterState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PCounterState copyWith(void Function(PCounterState) updates) => super.copyWith((message) => updates(message as PCounterState)) as PCounterState;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PCounterState create() => PCounterState._();
  PCounterState createEmptyInstance() => create();
  static $pb.PbList<PCounterState> createRepeated() => $pb.PbList<PCounterState>();
  @$core.pragma('dart2js:noInline')
  static PCounterState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PCounterState>(create);
  static PCounterState? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get count => $_getIZ(0);
  @$pb.TagNumber(1)
  set count($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearCount() => clearField(1);
}

class PCounterAction_Increment extends $pb.GeneratedMessage {
  factory PCounterAction_Increment() => create();
  PCounterAction_Increment._() : super();
  factory PCounterAction_Increment.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PCounterAction_Increment.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PCounterAction.Increment', package: const $pb.PackageName(_omitMessageNames ? '' : 'fub.unity.scenes'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PCounterAction_Increment clone() => PCounterAction_Increment()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PCounterAction_Increment copyWith(void Function(PCounterAction_Increment) updates) => super.copyWith((message) => updates(message as PCounterAction_Increment)) as PCounterAction_Increment;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PCounterAction_Increment create() => PCounterAction_Increment._();
  PCounterAction_Increment createEmptyInstance() => create();
  static $pb.PbList<PCounterAction_Increment> createRepeated() => $pb.PbList<PCounterAction_Increment>();
  @$core.pragma('dart2js:noInline')
  static PCounterAction_Increment getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PCounterAction_Increment>(create);
  static PCounterAction_Increment? _defaultInstance;
}

class PCounterAction_Reset extends $pb.GeneratedMessage {
  factory PCounterAction_Reset() => create();
  PCounterAction_Reset._() : super();
  factory PCounterAction_Reset.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PCounterAction_Reset.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PCounterAction.Reset', package: const $pb.PackageName(_omitMessageNames ? '' : 'fub.unity.scenes'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PCounterAction_Reset clone() => PCounterAction_Reset()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PCounterAction_Reset copyWith(void Function(PCounterAction_Reset) updates) => super.copyWith((message) => updates(message as PCounterAction_Reset)) as PCounterAction_Reset;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PCounterAction_Reset create() => PCounterAction_Reset._();
  PCounterAction_Reset createEmptyInstance() => create();
  static $pb.PbList<PCounterAction_Reset> createRepeated() => $pb.PbList<PCounterAction_Reset>();
  @$core.pragma('dart2js:noInline')
  static PCounterAction_Reset getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PCounterAction_Reset>(create);
  static PCounterAction_Reset? _defaultInstance;
}

enum PCounterAction_Action {
  increment, 
  reset, 
  notSet
}

class PCounterAction extends $pb.GeneratedMessage {
  factory PCounterAction({
    PCounterAction_Increment? increment,
    PCounterAction_Reset? reset,
  }) {
    final $result = create();
    if (increment != null) {
      $result.increment = increment;
    }
    if (reset != null) {
      $result.reset = reset;
    }
    return $result;
  }
  PCounterAction._() : super();
  factory PCounterAction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PCounterAction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, PCounterAction_Action> _PCounterAction_ActionByTag = {
    1 : PCounterAction_Action.increment,
    2 : PCounterAction_Action.reset,
    0 : PCounterAction_Action.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PCounterAction', package: const $pb.PackageName(_omitMessageNames ? '' : 'fub.unity.scenes'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<PCounterAction_Increment>(1, _omitFieldNames ? '' : 'increment', subBuilder: PCounterAction_Increment.create)
    ..aOM<PCounterAction_Reset>(2, _omitFieldNames ? '' : 'reset', subBuilder: PCounterAction_Reset.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PCounterAction clone() => PCounterAction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PCounterAction copyWith(void Function(PCounterAction) updates) => super.copyWith((message) => updates(message as PCounterAction)) as PCounterAction;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PCounterAction create() => PCounterAction._();
  PCounterAction createEmptyInstance() => create();
  static $pb.PbList<PCounterAction> createRepeated() => $pb.PbList<PCounterAction>();
  @$core.pragma('dart2js:noInline')
  static PCounterAction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PCounterAction>(create);
  static PCounterAction? _defaultInstance;

  PCounterAction_Action whichAction() => _PCounterAction_ActionByTag[$_whichOneof(0)]!;
  void clearAction() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  PCounterAction_Increment get increment => $_getN(0);
  @$pb.TagNumber(1)
  set increment(PCounterAction_Increment v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasIncrement() => $_has(0);
  @$pb.TagNumber(1)
  void clearIncrement() => clearField(1);
  @$pb.TagNumber(1)
  PCounterAction_Increment ensureIncrement() => $_ensure(0);

  @$pb.TagNumber(2)
  PCounterAction_Reset get reset => $_getN(1);
  @$pb.TagNumber(2)
  set reset(PCounterAction_Reset v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasReset() => $_has(1);
  @$pb.TagNumber(2)
  void clearReset() => clearField(2);
  @$pb.TagNumber(2)
  PCounterAction_Reset ensureReset() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
