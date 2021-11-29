///
//  Generated code. Do not modify.
//  source: unity/jumper.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'domain.pb.dart' as $0;
import '../google/protobuf/timestamp.pb.dart' as $1;

class JumperAction extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'JumperAction', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'fub.unity'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  JumperAction._() : super();
  factory JumperAction() => create();
  factory JumperAction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JumperAction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JumperAction clone() => JumperAction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JumperAction copyWith(void Function(JumperAction) updates) => super.copyWith((message) => updates(message as JumperAction)) as JumperAction; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JumperAction create() => JumperAction._();
  JumperAction createEmptyInstance() => create();
  static $pb.PbList<JumperAction> createRepeated() => $pb.PbList<JumperAction>();
  @$core.pragma('dart2js:noInline')
  static JumperAction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JumperAction>(create);
  static JumperAction? _defaultInstance;
}

class JumperState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'JumperState', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'fub.unity'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'canJump')
    ..aOM<$0.Vector3>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'position', subBuilder: $0.Vector3.create)
    ..aOM<$1.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'triggerJump', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  JumperState._() : super();
  factory JumperState({
    $core.bool? canJump,
    $0.Vector3? position,
    $1.Timestamp? triggerJump,
  }) {
    final _result = create();
    if (canJump != null) {
      _result.canJump = canJump;
    }
    if (position != null) {
      _result.position = position;
    }
    if (triggerJump != null) {
      _result.triggerJump = triggerJump;
    }
    return _result;
  }
  factory JumperState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JumperState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JumperState clone() => JumperState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JumperState copyWith(void Function(JumperState) updates) => super.copyWith((message) => updates(message as JumperState)) as JumperState; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JumperState create() => JumperState._();
  JumperState createEmptyInstance() => create();
  static $pb.PbList<JumperState> createRepeated() => $pb.PbList<JumperState>();
  @$core.pragma('dart2js:noInline')
  static JumperState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JumperState>(create);
  static JumperState? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get canJump => $_getBF(0);
  @$pb.TagNumber(1)
  set canJump($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCanJump() => $_has(0);
  @$pb.TagNumber(1)
  void clearCanJump() => clearField(1);

  @$pb.TagNumber(2)
  $0.Vector3 get position => $_getN(1);
  @$pb.TagNumber(2)
  set position($0.Vector3 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPosition() => $_has(1);
  @$pb.TagNumber(2)
  void clearPosition() => clearField(2);
  @$pb.TagNumber(2)
  $0.Vector3 ensurePosition() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.Timestamp get triggerJump => $_getN(2);
  @$pb.TagNumber(3)
  set triggerJump($1.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTriggerJump() => $_has(2);
  @$pb.TagNumber(3)
  void clearTriggerJump() => clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureTriggerJump() => $_ensure(2);
}

