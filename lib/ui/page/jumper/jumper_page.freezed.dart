// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'jumper_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$JumperStateTearOff {
  const _$JumperStateTearOff();

  _JumperState call(
      {required bool canJump,
      required double height,
      UnityViewController? controller}) {
    return _JumperState(
      canJump: canJump,
      height: height,
      controller: controller,
    );
  }
}

/// @nodoc
const $JumperState = _$JumperStateTearOff();

/// @nodoc
mixin _$JumperState {
  bool get canJump => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;
  UnityViewController? get controller => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JumperStateCopyWith<JumperState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JumperStateCopyWith<$Res> {
  factory $JumperStateCopyWith(
          JumperState value, $Res Function(JumperState) then) =
      _$JumperStateCopyWithImpl<$Res>;
  $Res call({bool canJump, double height, UnityViewController? controller});
}

/// @nodoc
class _$JumperStateCopyWithImpl<$Res> implements $JumperStateCopyWith<$Res> {
  _$JumperStateCopyWithImpl(this._value, this._then);

  final JumperState _value;
  // ignore: unused_field
  final $Res Function(JumperState) _then;

  @override
  $Res call({
    Object? canJump = freezed,
    Object? height = freezed,
    Object? controller = freezed,
  }) {
    return _then(_value.copyWith(
      canJump: canJump == freezed
          ? _value.canJump
          : canJump // ignore: cast_nullable_to_non_nullable
              as bool,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      controller: controller == freezed
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as UnityViewController?,
    ));
  }
}

/// @nodoc
abstract class _$JumperStateCopyWith<$Res>
    implements $JumperStateCopyWith<$Res> {
  factory _$JumperStateCopyWith(
          _JumperState value, $Res Function(_JumperState) then) =
      __$JumperStateCopyWithImpl<$Res>;
  @override
  $Res call({bool canJump, double height, UnityViewController? controller});
}

/// @nodoc
class __$JumperStateCopyWithImpl<$Res> extends _$JumperStateCopyWithImpl<$Res>
    implements _$JumperStateCopyWith<$Res> {
  __$JumperStateCopyWithImpl(
      _JumperState _value, $Res Function(_JumperState) _then)
      : super(_value, (v) => _then(v as _JumperState));

  @override
  _JumperState get _value => super._value as _JumperState;

  @override
  $Res call({
    Object? canJump = freezed,
    Object? height = freezed,
    Object? controller = freezed,
  }) {
    return _then(_JumperState(
      canJump: canJump == freezed
          ? _value.canJump
          : canJump // ignore: cast_nullable_to_non_nullable
              as bool,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      controller: controller == freezed
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as UnityViewController?,
    ));
  }
}

/// @nodoc

class _$_JumperState implements _JumperState {
  _$_JumperState(
      {required this.canJump, required this.height, this.controller});

  @override
  final bool canJump;
  @override
  final double height;
  @override
  final UnityViewController? controller;

  @override
  String toString() {
    return 'JumperState(canJump: $canJump, height: $height, controller: $controller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JumperState &&
            (identical(other.canJump, canJump) ||
                const DeepCollectionEquality()
                    .equals(other.canJump, canJump)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.controller, controller) ||
                const DeepCollectionEquality()
                    .equals(other.controller, controller)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(canJump) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(controller);

  @JsonKey(ignore: true)
  @override
  _$JumperStateCopyWith<_JumperState> get copyWith =>
      __$JumperStateCopyWithImpl<_JumperState>(this, _$identity);
}

abstract class _JumperState implements JumperState {
  factory _JumperState(
      {required bool canJump,
      required double height,
      UnityViewController? controller}) = _$_JumperState;

  @override
  bool get canJump => throw _privateConstructorUsedError;
  @override
  double get height => throw _privateConstructorUsedError;
  @override
  UnityViewController? get controller => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$JumperStateCopyWith<_JumperState> get copyWith =>
      throw _privateConstructorUsedError;
}
