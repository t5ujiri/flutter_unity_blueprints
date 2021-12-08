///
//  Generated code. Do not modify.
//  source: unity/jumper.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class JumperAction_Jump extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'JumperAction.Jump', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'fub.unity'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  JumperAction_Jump._() : super();
  factory JumperAction_Jump() => create();
  factory JumperAction_Jump.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JumperAction_Jump.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JumperAction_Jump clone() => JumperAction_Jump()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JumperAction_Jump copyWith(void Function(JumperAction_Jump) updates) => super.copyWith((message) => updates(message as JumperAction_Jump)) as JumperAction_Jump; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JumperAction_Jump create() => JumperAction_Jump._();
  JumperAction_Jump createEmptyInstance() => create();
  static $pb.PbList<JumperAction_Jump> createRepeated() => $pb.PbList<JumperAction_Jump>();
  @$core.pragma('dart2js:noInline')
  static JumperAction_Jump getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JumperAction_Jump>(create);
  static JumperAction_Jump? _defaultInstance;
}

class JumperAction_ToggleCanJump extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'JumperAction.ToggleCanJump', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'fub.unity'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'canJump')
    ..hasRequiredFields = false
  ;

  JumperAction_ToggleCanJump._() : super();
  factory JumperAction_ToggleCanJump({
    $core.bool? canJump,
  }) {
    final _result = create();
    if (canJump != null) {
      _result.canJump = canJump;
    }
    return _result;
  }
  factory JumperAction_ToggleCanJump.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JumperAction_ToggleCanJump.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JumperAction_ToggleCanJump clone() => JumperAction_ToggleCanJump()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JumperAction_ToggleCanJump copyWith(void Function(JumperAction_ToggleCanJump) updates) => super.copyWith((message) => updates(message as JumperAction_ToggleCanJump)) as JumperAction_ToggleCanJump; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JumperAction_ToggleCanJump create() => JumperAction_ToggleCanJump._();
  JumperAction_ToggleCanJump createEmptyInstance() => create();
  static $pb.PbList<JumperAction_ToggleCanJump> createRepeated() => $pb.PbList<JumperAction_ToggleCanJump>();
  @$core.pragma('dart2js:noInline')
  static JumperAction_ToggleCanJump getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JumperAction_ToggleCanJump>(create);
  static JumperAction_ToggleCanJump? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get canJump => $_getBF(0);
  @$pb.TagNumber(1)
  set canJump($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCanJump() => $_has(0);
  @$pb.TagNumber(1)
  void clearCanJump() => clearField(1);
}

enum JumperAction_Action {
  jump, 
  toggleCanJump, 
  notSet
}

class JumperAction extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, JumperAction_Action> _JumperAction_ActionByTag = {
    1 : JumperAction_Action.jump,
    2 : JumperAction_Action.toggleCanJump,
    0 : JumperAction_Action.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'JumperAction', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'fub.unity'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<JumperAction_Jump>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'jump', subBuilder: JumperAction_Jump.create)
    ..aOM<JumperAction_ToggleCanJump>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'toggleCanJump', subBuilder: JumperAction_ToggleCanJump.create)
    ..hasRequiredFields = false
  ;

  JumperAction._() : super();
  factory JumperAction({
    JumperAction_Jump? jump,
    JumperAction_ToggleCanJump? toggleCanJump,
  }) {
    final _result = create();
    if (jump != null) {
      _result.jump = jump;
    }
    if (toggleCanJump != null) {
      _result.toggleCanJump = toggleCanJump;
    }
    return _result;
  }
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

  JumperAction_Action whichAction() => _JumperAction_ActionByTag[$_whichOneof(0)]!;
  void clearAction() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  JumperAction_Jump get jump => $_getN(0);
  @$pb.TagNumber(1)
  set jump(JumperAction_Jump v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasJump() => $_has(0);
  @$pb.TagNumber(1)
  void clearJump() => clearField(1);
  @$pb.TagNumber(1)
  JumperAction_Jump ensureJump() => $_ensure(0);

  @$pb.TagNumber(2)
  JumperAction_ToggleCanJump get toggleCanJump => $_getN(1);
  @$pb.TagNumber(2)
  set toggleCanJump(JumperAction_ToggleCanJump v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasToggleCanJump() => $_has(1);
  @$pb.TagNumber(2)
  void clearToggleCanJump() => clearField(2);
  @$pb.TagNumber(2)
  JumperAction_ToggleCanJump ensureToggleCanJump() => $_ensure(1);
}

class JumperState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'JumperState', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'fub.unity'), createEmptyInstance: create)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'canJump')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'triggerJump', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  JumperState._() : super();
  factory JumperState({
    $core.bool? canJump,
    $core.int? triggerJump,
  }) {
    final _result = create();
    if (canJump != null) {
      _result.canJump = canJump;
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

  @$pb.TagNumber(3)
  $core.bool get canJump => $_getBF(0);
  @$pb.TagNumber(3)
  set canJump($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(3)
  $core.bool hasCanJump() => $_has(0);
  @$pb.TagNumber(3)
  void clearCanJump() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get triggerJump => $_getIZ(1);
  @$pb.TagNumber(4)
  set triggerJump($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(4)
  $core.bool hasTriggerJump() => $_has(1);
  @$pb.TagNumber(4)
  void clearTriggerJump() => clearField(4);
}

