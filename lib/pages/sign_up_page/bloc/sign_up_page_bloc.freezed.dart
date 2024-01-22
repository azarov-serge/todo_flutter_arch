// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) changeState,
    required TResult Function(String login, String password) signUp,
    required TResult Function() clearError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function(String login, String password)? signUp,
    TResult? Function()? clearError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function(String login, String password)? signUp,
    TResult Function()? clearError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStateEvent value) changeState,
    required TResult Function(_SignUpEvent value) signUp,
    required TResult Function(_ClearErrorEvent value) clearError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_SignUpEvent value)? signUp,
    TResult? Function(_ClearErrorEvent value)? clearError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_SignUpEvent value)? signUp,
    TResult Function(_ClearErrorEvent value)? clearError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpPageEventCopyWith<$Res> {
  factory $SignUpPageEventCopyWith(
          SignUpPageEvent value, $Res Function(SignUpPageEvent) then) =
      _$SignUpPageEventCopyWithImpl<$Res, SignUpPageEvent>;
}

/// @nodoc
class _$SignUpPageEventCopyWithImpl<$Res, $Val extends SignUpPageEvent>
    implements $SignUpPageEventCopyWith<$Res> {
  _$SignUpPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ChangeStateEventCopyWith<$Res> {
  factory _$$_ChangeStateEventCopyWith(
          _$_ChangeStateEvent value, $Res Function(_$_ChangeStateEvent) then) =
      __$$_ChangeStateEventCopyWithImpl<$Res>;
  @useResult
  $Res call({AppState appState});

  $AppStateCopyWith<$Res> get appState;
}

/// @nodoc
class __$$_ChangeStateEventCopyWithImpl<$Res>
    extends _$SignUpPageEventCopyWithImpl<$Res, _$_ChangeStateEvent>
    implements _$$_ChangeStateEventCopyWith<$Res> {
  __$$_ChangeStateEventCopyWithImpl(
      _$_ChangeStateEvent _value, $Res Function(_$_ChangeStateEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appState = null,
  }) {
    return _then(_$_ChangeStateEvent(
      appState: null == appState
          ? _value.appState
          : appState // ignore: cast_nullable_to_non_nullable
              as AppState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppStateCopyWith<$Res> get appState {
    return $AppStateCopyWith<$Res>(_value.appState, (value) {
      return _then(_value.copyWith(appState: value));
    });
  }
}

/// @nodoc

class _$_ChangeStateEvent implements _ChangeStateEvent {
  const _$_ChangeStateEvent({required this.appState});

  @override
  final AppState appState;

  @override
  String toString() {
    return 'SignUpPageEvent.changeState(appState: $appState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeStateEvent &&
            (identical(other.appState, appState) ||
                other.appState == appState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeStateEventCopyWith<_$_ChangeStateEvent> get copyWith =>
      __$$_ChangeStateEventCopyWithImpl<_$_ChangeStateEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) changeState,
    required TResult Function(String login, String password) signUp,
    required TResult Function() clearError,
  }) {
    return changeState(appState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function(String login, String password)? signUp,
    TResult? Function()? clearError,
  }) {
    return changeState?.call(appState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function(String login, String password)? signUp,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (changeState != null) {
      return changeState(appState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStateEvent value) changeState,
    required TResult Function(_SignUpEvent value) signUp,
    required TResult Function(_ClearErrorEvent value) clearError,
  }) {
    return changeState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_SignUpEvent value)? signUp,
    TResult? Function(_ClearErrorEvent value)? clearError,
  }) {
    return changeState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_SignUpEvent value)? signUp,
    TResult Function(_ClearErrorEvent value)? clearError,
    required TResult orElse(),
  }) {
    if (changeState != null) {
      return changeState(this);
    }
    return orElse();
  }
}

abstract class _ChangeStateEvent implements SignUpPageEvent {
  const factory _ChangeStateEvent({required final AppState appState}) =
      _$_ChangeStateEvent;

  AppState get appState;
  @JsonKey(ignore: true)
  _$$_ChangeStateEventCopyWith<_$_ChangeStateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignUpEventCopyWith<$Res> {
  factory _$$_SignUpEventCopyWith(
          _$_SignUpEvent value, $Res Function(_$_SignUpEvent) then) =
      __$$_SignUpEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String login, String password});
}

/// @nodoc
class __$$_SignUpEventCopyWithImpl<$Res>
    extends _$SignUpPageEventCopyWithImpl<$Res, _$_SignUpEvent>
    implements _$$_SignUpEventCopyWith<$Res> {
  __$$_SignUpEventCopyWithImpl(
      _$_SignUpEvent _value, $Res Function(_$_SignUpEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
  }) {
    return _then(_$_SignUpEvent(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignUpEvent implements _SignUpEvent {
  const _$_SignUpEvent({required this.login, required this.password});

  @override
  final String login;
  @override
  final String password;

  @override
  String toString() {
    return 'SignUpPageEvent.signUp(login: $login, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpEvent &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, login, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpEventCopyWith<_$_SignUpEvent> get copyWith =>
      __$$_SignUpEventCopyWithImpl<_$_SignUpEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) changeState,
    required TResult Function(String login, String password) signUp,
    required TResult Function() clearError,
  }) {
    return signUp(login, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function(String login, String password)? signUp,
    TResult? Function()? clearError,
  }) {
    return signUp?.call(login, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function(String login, String password)? signUp,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(login, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStateEvent value) changeState,
    required TResult Function(_SignUpEvent value) signUp,
    required TResult Function(_ClearErrorEvent value) clearError,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_SignUpEvent value)? signUp,
    TResult? Function(_ClearErrorEvent value)? clearError,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_SignUpEvent value)? signUp,
    TResult Function(_ClearErrorEvent value)? clearError,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class _SignUpEvent implements SignUpPageEvent {
  const factory _SignUpEvent(
      {required final String login,
      required final String password}) = _$_SignUpEvent;

  String get login;
  String get password;
  @JsonKey(ignore: true)
  _$$_SignUpEventCopyWith<_$_SignUpEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearErrorEventCopyWith<$Res> {
  factory _$$_ClearErrorEventCopyWith(
          _$_ClearErrorEvent value, $Res Function(_$_ClearErrorEvent) then) =
      __$$_ClearErrorEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearErrorEventCopyWithImpl<$Res>
    extends _$SignUpPageEventCopyWithImpl<$Res, _$_ClearErrorEvent>
    implements _$$_ClearErrorEventCopyWith<$Res> {
  __$$_ClearErrorEventCopyWithImpl(
      _$_ClearErrorEvent _value, $Res Function(_$_ClearErrorEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearErrorEvent implements _ClearErrorEvent {
  const _$_ClearErrorEvent();

  @override
  String toString() {
    return 'SignUpPageEvent.clearError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClearErrorEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) changeState,
    required TResult Function(String login, String password) signUp,
    required TResult Function() clearError,
  }) {
    return clearError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function(String login, String password)? signUp,
    TResult? Function()? clearError,
  }) {
    return clearError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function(String login, String password)? signUp,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (clearError != null) {
      return clearError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStateEvent value) changeState,
    required TResult Function(_SignUpEvent value) signUp,
    required TResult Function(_ClearErrorEvent value) clearError,
  }) {
    return clearError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_SignUpEvent value)? signUp,
    TResult? Function(_ClearErrorEvent value)? clearError,
  }) {
    return clearError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_SignUpEvent value)? signUp,
    TResult Function(_ClearErrorEvent value)? clearError,
    required TResult orElse(),
  }) {
    if (clearError != null) {
      return clearError(this);
    }
    return orElse();
  }
}

abstract class _ClearErrorEvent implements SignUpPageEvent {
  const factory _ClearErrorEvent() = _$_ClearErrorEvent;
}
