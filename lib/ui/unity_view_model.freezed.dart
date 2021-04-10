// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'unity_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UnityViewStateTearOff {
  const _$UnityViewStateTearOff();

  _UnityViewState call(
      {UnityViewController? unityViewController,
      CounterServiceClient? counterServiceClient,
      int? port}) {
    return _UnityViewState(
      unityViewController: unityViewController,
      counterServiceClient: counterServiceClient,
      port: port,
    );
  }
}

/// @nodoc
const $UnityViewState = _$UnityViewStateTearOff();

/// @nodoc
mixin _$UnityViewState {
  UnityViewController? get unityViewController =>
      throw _privateConstructorUsedError;
  CounterServiceClient? get counterServiceClient =>
      throw _privateConstructorUsedError;
  int? get port => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UnityViewStateCopyWith<UnityViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnityViewStateCopyWith<$Res> {
  factory $UnityViewStateCopyWith(
          UnityViewState value, $Res Function(UnityViewState) then) =
      _$UnityViewStateCopyWithImpl<$Res>;
  $Res call(
      {UnityViewController? unityViewController,
      CounterServiceClient? counterServiceClient,
      int? port});
}

/// @nodoc
class _$UnityViewStateCopyWithImpl<$Res>
    implements $UnityViewStateCopyWith<$Res> {
  _$UnityViewStateCopyWithImpl(this._value, this._then);

  final UnityViewState _value;
  // ignore: unused_field
  final $Res Function(UnityViewState) _then;

  @override
  $Res call({
    Object? unityViewController = freezed,
    Object? counterServiceClient = freezed,
    Object? port = freezed,
  }) {
    return _then(_value.copyWith(
      unityViewController: unityViewController == freezed
          ? _value.unityViewController
          : unityViewController // ignore: cast_nullable_to_non_nullable
              as UnityViewController?,
      counterServiceClient: counterServiceClient == freezed
          ? _value.counterServiceClient
          : counterServiceClient // ignore: cast_nullable_to_non_nullable
              as CounterServiceClient?,
      port: port == freezed
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$UnityViewStateCopyWith<$Res>
    implements $UnityViewStateCopyWith<$Res> {
  factory _$UnityViewStateCopyWith(
          _UnityViewState value, $Res Function(_UnityViewState) then) =
      __$UnityViewStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UnityViewController? unityViewController,
      CounterServiceClient? counterServiceClient,
      int? port});
}

/// @nodoc
class __$UnityViewStateCopyWithImpl<$Res>
    extends _$UnityViewStateCopyWithImpl<$Res>
    implements _$UnityViewStateCopyWith<$Res> {
  __$UnityViewStateCopyWithImpl(
      _UnityViewState _value, $Res Function(_UnityViewState) _then)
      : super(_value, (v) => _then(v as _UnityViewState));

  @override
  _UnityViewState get _value => super._value as _UnityViewState;

  @override
  $Res call({
    Object? unityViewController = freezed,
    Object? counterServiceClient = freezed,
    Object? port = freezed,
  }) {
    return _then(_UnityViewState(
      unityViewController: unityViewController == freezed
          ? _value.unityViewController
          : unityViewController // ignore: cast_nullable_to_non_nullable
              as UnityViewController?,
      counterServiceClient: counterServiceClient == freezed
          ? _value.counterServiceClient
          : counterServiceClient // ignore: cast_nullable_to_non_nullable
              as CounterServiceClient?,
      port: port == freezed
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
class _$_UnityViewState implements _UnityViewState {
  const _$_UnityViewState(
      {this.unityViewController, this.counterServiceClient, this.port});

  @override
  final UnityViewController? unityViewController;
  @override
  final CounterServiceClient? counterServiceClient;
  @override
  final int? port;

  @override
  String toString() {
    return 'UnityViewState(unityViewController: $unityViewController, counterServiceClient: $counterServiceClient, port: $port)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnityViewState &&
            (identical(other.unityViewController, unityViewController) ||
                const DeepCollectionEquality()
                    .equals(other.unityViewController, unityViewController)) &&
            (identical(other.counterServiceClient, counterServiceClient) ||
                const DeepCollectionEquality().equals(
                    other.counterServiceClient, counterServiceClient)) &&
            (identical(other.port, port) ||
                const DeepCollectionEquality().equals(other.port, port)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(unityViewController) ^
      const DeepCollectionEquality().hash(counterServiceClient) ^
      const DeepCollectionEquality().hash(port);

  @JsonKey(ignore: true)
  @override
  _$UnityViewStateCopyWith<_UnityViewState> get copyWith =>
      __$UnityViewStateCopyWithImpl<_UnityViewState>(this, _$identity);
}

abstract class _UnityViewState implements UnityViewState {
  const factory _UnityViewState(
      {UnityViewController? unityViewController,
      CounterServiceClient? counterServiceClient,
      int? port}) = _$_UnityViewState;

  @override
  UnityViewController? get unityViewController =>
      throw _privateConstructorUsedError;
  @override
  CounterServiceClient? get counterServiceClient =>
      throw _privateConstructorUsedError;
  @override
  int? get port => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UnityViewStateCopyWith<_UnityViewState> get copyWith =>
      throw _privateConstructorUsedError;
}
