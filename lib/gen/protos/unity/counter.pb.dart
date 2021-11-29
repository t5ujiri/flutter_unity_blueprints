///
//  Generated code. Do not modify.
//  source: unity/counter.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class CounterState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CounterState', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'fub.unity'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'count')
    ..hasRequiredFields = false
  ;

  CounterState._() : super();
  factory CounterState({
    $fixnum.Int64? count,
  }) {
    final _result = create();
    if (count != null) {
      _result.count = count;
    }
    return _result;
  }
  factory CounterState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CounterState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CounterState clone() => CounterState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CounterState copyWith(void Function(CounterState) updates) => super.copyWith((message) => updates(message as CounterState)) as CounterState; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CounterState create() => CounterState._();
  CounterState createEmptyInstance() => create();
  static $pb.PbList<CounterState> createRepeated() => $pb.PbList<CounterState>();
  @$core.pragma('dart2js:noInline')
  static CounterState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CounterState>(create);
  static CounterState? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get count => $_getI64(0);
  @$pb.TagNumber(1)
  set count($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearCount() => clearField(1);
}

class CounterAction_Increment extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CounterAction.Increment', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'fub.unity'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  CounterAction_Increment._() : super();
  factory CounterAction_Increment() => create();
  factory CounterAction_Increment.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CounterAction_Increment.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CounterAction_Increment clone() => CounterAction_Increment()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CounterAction_Increment copyWith(void Function(CounterAction_Increment) updates) => super.copyWith((message) => updates(message as CounterAction_Increment)) as CounterAction_Increment; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CounterAction_Increment create() => CounterAction_Increment._();
  CounterAction_Increment createEmptyInstance() => create();
  static $pb.PbList<CounterAction_Increment> createRepeated() => $pb.PbList<CounterAction_Increment>();
  @$core.pragma('dart2js:noInline')
  static CounterAction_Increment getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CounterAction_Increment>(create);
  static CounterAction_Increment? _defaultInstance;
}

enum CounterAction_Action {
  increment, 
  notSet
}

class CounterAction extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, CounterAction_Action> _CounterAction_ActionByTag = {
    1 : CounterAction_Action.increment,
    0 : CounterAction_Action.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CounterAction', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'fub.unity'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<CounterAction_Increment>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'increment', subBuilder: CounterAction_Increment.create)
    ..hasRequiredFields = false
  ;

  CounterAction._() : super();
  factory CounterAction({
    CounterAction_Increment? increment,
  }) {
    final _result = create();
    if (increment != null) {
      _result.increment = increment;
    }
    return _result;
  }
  factory CounterAction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CounterAction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CounterAction clone() => CounterAction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CounterAction copyWith(void Function(CounterAction) updates) => super.copyWith((message) => updates(message as CounterAction)) as CounterAction; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CounterAction create() => CounterAction._();
  CounterAction createEmptyInstance() => create();
  static $pb.PbList<CounterAction> createRepeated() => $pb.PbList<CounterAction>();
  @$core.pragma('dart2js:noInline')
  static CounterAction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CounterAction>(create);
  static CounterAction? _defaultInstance;

  CounterAction_Action whichAction() => _CounterAction_ActionByTag[$_whichOneof(0)]!;
  void clearAction() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  CounterAction_Increment get increment => $_getN(0);
  @$pb.TagNumber(1)
  set increment(CounterAction_Increment v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasIncrement() => $_has(0);
  @$pb.TagNumber(1)
  void clearIncrement() => clearField(1);
  @$pb.TagNumber(1)
  CounterAction_Increment ensureIncrement() => $_ensure(0);
}

