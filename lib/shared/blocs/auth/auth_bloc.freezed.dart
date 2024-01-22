// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) changeState,
    required TResult Function() checkAuth,
    required TResult Function() clearUserId,
    required TResult Function(String login, String password) signIn,
    required TResult Function() clearSignInError,
    required TResult Function(String login, String password) signUp,
    required TResult Function() clearSignUpError,
    required TResult Function() signOut,
    required TResult Function() clearSignOutError,
    required TResult Function() clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function()? checkAuth,
    TResult? Function()? clearUserId,
    TResult? Function(String login, String password)? signIn,
    TResult? Function()? clearSignInError,
    TResult? Function(String login, String password)? signUp,
    TResult? Function()? clearSignUpError,
    TResult? Function()? signOut,
    TResult? Function()? clearSignOutError,
    TResult? Function()? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function()? checkAuth,
    TResult Function()? clearUserId,
    TResult Function(String login, String password)? signIn,
    TResult Function()? clearSignInError,
    TResult Function(String login, String password)? signUp,
    TResult Function()? clearSignUpError,
    TResult Function()? signOut,
    TResult Function()? clearSignOutError,
    TResult Function()? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStateEvent value) changeState,
    required TResult Function(_CheckAuthEvent value) checkAuth,
    required TResult Function(_ClearUserIdEvent value) clearUserId,
    required TResult Function(_SignInEvent value) signIn,
    required TResult Function(_ClearSignInErrorEvent value) clearSignInError,
    required TResult Function(_SignUpEvent value) signUp,
    required TResult Function(_ClearSignUpErrorEvent value) clearSignUpError,
    required TResult Function(_SignOutEvent value) signOut,
    required TResult Function(_ClearSignOutErrorEvent value) clearSignOutError,
    required TResult Function(_ClearEvent value) clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_CheckAuthEvent value)? checkAuth,
    TResult? Function(_ClearUserIdEvent value)? clearUserId,
    TResult? Function(_SignInEvent value)? signIn,
    TResult? Function(_ClearSignInErrorEvent value)? clearSignInError,
    TResult? Function(_SignUpEvent value)? signUp,
    TResult? Function(_ClearSignUpErrorEvent value)? clearSignUpError,
    TResult? Function(_SignOutEvent value)? signOut,
    TResult? Function(_ClearSignOutErrorEvent value)? clearSignOutError,
    TResult? Function(_ClearEvent value)? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_CheckAuthEvent value)? checkAuth,
    TResult Function(_ClearUserIdEvent value)? clearUserId,
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_ClearSignInErrorEvent value)? clearSignInError,
    TResult Function(_SignUpEvent value)? signUp,
    TResult Function(_ClearSignUpErrorEvent value)? clearSignUpError,
    TResult Function(_SignOutEvent value)? signOut,
    TResult Function(_ClearSignOutErrorEvent value)? clearSignOutError,
    TResult Function(_ClearEvent value)? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

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
    extends _$AuthEventCopyWithImpl<$Res, _$_ChangeStateEvent>
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
    return 'AuthEvent.changeState(appState: $appState)';
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
    required TResult Function() checkAuth,
    required TResult Function() clearUserId,
    required TResult Function(String login, String password) signIn,
    required TResult Function() clearSignInError,
    required TResult Function(String login, String password) signUp,
    required TResult Function() clearSignUpError,
    required TResult Function() signOut,
    required TResult Function() clearSignOutError,
    required TResult Function() clear,
  }) {
    return changeState(appState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function()? checkAuth,
    TResult? Function()? clearUserId,
    TResult? Function(String login, String password)? signIn,
    TResult? Function()? clearSignInError,
    TResult? Function(String login, String password)? signUp,
    TResult? Function()? clearSignUpError,
    TResult? Function()? signOut,
    TResult? Function()? clearSignOutError,
    TResult? Function()? clear,
  }) {
    return changeState?.call(appState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function()? checkAuth,
    TResult Function()? clearUserId,
    TResult Function(String login, String password)? signIn,
    TResult Function()? clearSignInError,
    TResult Function(String login, String password)? signUp,
    TResult Function()? clearSignUpError,
    TResult Function()? signOut,
    TResult Function()? clearSignOutError,
    TResult Function()? clear,
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
    required TResult Function(_CheckAuthEvent value) checkAuth,
    required TResult Function(_ClearUserIdEvent value) clearUserId,
    required TResult Function(_SignInEvent value) signIn,
    required TResult Function(_ClearSignInErrorEvent value) clearSignInError,
    required TResult Function(_SignUpEvent value) signUp,
    required TResult Function(_ClearSignUpErrorEvent value) clearSignUpError,
    required TResult Function(_SignOutEvent value) signOut,
    required TResult Function(_ClearSignOutErrorEvent value) clearSignOutError,
    required TResult Function(_ClearEvent value) clear,
  }) {
    return changeState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_CheckAuthEvent value)? checkAuth,
    TResult? Function(_ClearUserIdEvent value)? clearUserId,
    TResult? Function(_SignInEvent value)? signIn,
    TResult? Function(_ClearSignInErrorEvent value)? clearSignInError,
    TResult? Function(_SignUpEvent value)? signUp,
    TResult? Function(_ClearSignUpErrorEvent value)? clearSignUpError,
    TResult? Function(_SignOutEvent value)? signOut,
    TResult? Function(_ClearSignOutErrorEvent value)? clearSignOutError,
    TResult? Function(_ClearEvent value)? clear,
  }) {
    return changeState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_CheckAuthEvent value)? checkAuth,
    TResult Function(_ClearUserIdEvent value)? clearUserId,
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_ClearSignInErrorEvent value)? clearSignInError,
    TResult Function(_SignUpEvent value)? signUp,
    TResult Function(_ClearSignUpErrorEvent value)? clearSignUpError,
    TResult Function(_SignOutEvent value)? signOut,
    TResult Function(_ClearSignOutErrorEvent value)? clearSignOutError,
    TResult Function(_ClearEvent value)? clear,
    required TResult orElse(),
  }) {
    if (changeState != null) {
      return changeState(this);
    }
    return orElse();
  }
}

abstract class _ChangeStateEvent implements AuthEvent {
  const factory _ChangeStateEvent({required final AppState appState}) =
      _$_ChangeStateEvent;

  AppState get appState;
  @JsonKey(ignore: true)
  _$$_ChangeStateEventCopyWith<_$_ChangeStateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CheckAuthEventCopyWith<$Res> {
  factory _$$_CheckAuthEventCopyWith(
          _$_CheckAuthEvent value, $Res Function(_$_CheckAuthEvent) then) =
      __$$_CheckAuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckAuthEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_CheckAuthEvent>
    implements _$$_CheckAuthEventCopyWith<$Res> {
  __$$_CheckAuthEventCopyWithImpl(
      _$_CheckAuthEvent _value, $Res Function(_$_CheckAuthEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CheckAuthEvent implements _CheckAuthEvent {
  const _$_CheckAuthEvent();

  @override
  String toString() {
    return 'AuthEvent.checkAuth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CheckAuthEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) changeState,
    required TResult Function() checkAuth,
    required TResult Function() clearUserId,
    required TResult Function(String login, String password) signIn,
    required TResult Function() clearSignInError,
    required TResult Function(String login, String password) signUp,
    required TResult Function() clearSignUpError,
    required TResult Function() signOut,
    required TResult Function() clearSignOutError,
    required TResult Function() clear,
  }) {
    return checkAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function()? checkAuth,
    TResult? Function()? clearUserId,
    TResult? Function(String login, String password)? signIn,
    TResult? Function()? clearSignInError,
    TResult? Function(String login, String password)? signUp,
    TResult? Function()? clearSignUpError,
    TResult? Function()? signOut,
    TResult? Function()? clearSignOutError,
    TResult? Function()? clear,
  }) {
    return checkAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function()? checkAuth,
    TResult Function()? clearUserId,
    TResult Function(String login, String password)? signIn,
    TResult Function()? clearSignInError,
    TResult Function(String login, String password)? signUp,
    TResult Function()? clearSignUpError,
    TResult Function()? signOut,
    TResult Function()? clearSignOutError,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStateEvent value) changeState,
    required TResult Function(_CheckAuthEvent value) checkAuth,
    required TResult Function(_ClearUserIdEvent value) clearUserId,
    required TResult Function(_SignInEvent value) signIn,
    required TResult Function(_ClearSignInErrorEvent value) clearSignInError,
    required TResult Function(_SignUpEvent value) signUp,
    required TResult Function(_ClearSignUpErrorEvent value) clearSignUpError,
    required TResult Function(_SignOutEvent value) signOut,
    required TResult Function(_ClearSignOutErrorEvent value) clearSignOutError,
    required TResult Function(_ClearEvent value) clear,
  }) {
    return checkAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_CheckAuthEvent value)? checkAuth,
    TResult? Function(_ClearUserIdEvent value)? clearUserId,
    TResult? Function(_SignInEvent value)? signIn,
    TResult? Function(_ClearSignInErrorEvent value)? clearSignInError,
    TResult? Function(_SignUpEvent value)? signUp,
    TResult? Function(_ClearSignUpErrorEvent value)? clearSignUpError,
    TResult? Function(_SignOutEvent value)? signOut,
    TResult? Function(_ClearSignOutErrorEvent value)? clearSignOutError,
    TResult? Function(_ClearEvent value)? clear,
  }) {
    return checkAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_CheckAuthEvent value)? checkAuth,
    TResult Function(_ClearUserIdEvent value)? clearUserId,
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_ClearSignInErrorEvent value)? clearSignInError,
    TResult Function(_SignUpEvent value)? signUp,
    TResult Function(_ClearSignUpErrorEvent value)? clearSignUpError,
    TResult Function(_SignOutEvent value)? signOut,
    TResult Function(_ClearSignOutErrorEvent value)? clearSignOutError,
    TResult Function(_ClearEvent value)? clear,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth(this);
    }
    return orElse();
  }
}

abstract class _CheckAuthEvent implements AuthEvent {
  const factory _CheckAuthEvent() = _$_CheckAuthEvent;
}

/// @nodoc
abstract class _$$_ClearUserIdEventCopyWith<$Res> {
  factory _$$_ClearUserIdEventCopyWith(
          _$_ClearUserIdEvent value, $Res Function(_$_ClearUserIdEvent) then) =
      __$$_ClearUserIdEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearUserIdEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_ClearUserIdEvent>
    implements _$$_ClearUserIdEventCopyWith<$Res> {
  __$$_ClearUserIdEventCopyWithImpl(
      _$_ClearUserIdEvent _value, $Res Function(_$_ClearUserIdEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearUserIdEvent implements _ClearUserIdEvent {
  const _$_ClearUserIdEvent();

  @override
  String toString() {
    return 'AuthEvent.clearUserId()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClearUserIdEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) changeState,
    required TResult Function() checkAuth,
    required TResult Function() clearUserId,
    required TResult Function(String login, String password) signIn,
    required TResult Function() clearSignInError,
    required TResult Function(String login, String password) signUp,
    required TResult Function() clearSignUpError,
    required TResult Function() signOut,
    required TResult Function() clearSignOutError,
    required TResult Function() clear,
  }) {
    return clearUserId();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function()? checkAuth,
    TResult? Function()? clearUserId,
    TResult? Function(String login, String password)? signIn,
    TResult? Function()? clearSignInError,
    TResult? Function(String login, String password)? signUp,
    TResult? Function()? clearSignUpError,
    TResult? Function()? signOut,
    TResult? Function()? clearSignOutError,
    TResult? Function()? clear,
  }) {
    return clearUserId?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function()? checkAuth,
    TResult Function()? clearUserId,
    TResult Function(String login, String password)? signIn,
    TResult Function()? clearSignInError,
    TResult Function(String login, String password)? signUp,
    TResult Function()? clearSignUpError,
    TResult Function()? signOut,
    TResult Function()? clearSignOutError,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (clearUserId != null) {
      return clearUserId();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStateEvent value) changeState,
    required TResult Function(_CheckAuthEvent value) checkAuth,
    required TResult Function(_ClearUserIdEvent value) clearUserId,
    required TResult Function(_SignInEvent value) signIn,
    required TResult Function(_ClearSignInErrorEvent value) clearSignInError,
    required TResult Function(_SignUpEvent value) signUp,
    required TResult Function(_ClearSignUpErrorEvent value) clearSignUpError,
    required TResult Function(_SignOutEvent value) signOut,
    required TResult Function(_ClearSignOutErrorEvent value) clearSignOutError,
    required TResult Function(_ClearEvent value) clear,
  }) {
    return clearUserId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_CheckAuthEvent value)? checkAuth,
    TResult? Function(_ClearUserIdEvent value)? clearUserId,
    TResult? Function(_SignInEvent value)? signIn,
    TResult? Function(_ClearSignInErrorEvent value)? clearSignInError,
    TResult? Function(_SignUpEvent value)? signUp,
    TResult? Function(_ClearSignUpErrorEvent value)? clearSignUpError,
    TResult? Function(_SignOutEvent value)? signOut,
    TResult? Function(_ClearSignOutErrorEvent value)? clearSignOutError,
    TResult? Function(_ClearEvent value)? clear,
  }) {
    return clearUserId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_CheckAuthEvent value)? checkAuth,
    TResult Function(_ClearUserIdEvent value)? clearUserId,
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_ClearSignInErrorEvent value)? clearSignInError,
    TResult Function(_SignUpEvent value)? signUp,
    TResult Function(_ClearSignUpErrorEvent value)? clearSignUpError,
    TResult Function(_SignOutEvent value)? signOut,
    TResult Function(_ClearSignOutErrorEvent value)? clearSignOutError,
    TResult Function(_ClearEvent value)? clear,
    required TResult orElse(),
  }) {
    if (clearUserId != null) {
      return clearUserId(this);
    }
    return orElse();
  }
}

abstract class _ClearUserIdEvent implements AuthEvent {
  const factory _ClearUserIdEvent() = _$_ClearUserIdEvent;
}

/// @nodoc
abstract class _$$_SignInEventCopyWith<$Res> {
  factory _$$_SignInEventCopyWith(
          _$_SignInEvent value, $Res Function(_$_SignInEvent) then) =
      __$$_SignInEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String login, String password});
}

/// @nodoc
class __$$_SignInEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignInEvent>
    implements _$$_SignInEventCopyWith<$Res> {
  __$$_SignInEventCopyWithImpl(
      _$_SignInEvent _value, $Res Function(_$_SignInEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
  }) {
    return _then(_$_SignInEvent(
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

class _$_SignInEvent implements _SignInEvent {
  const _$_SignInEvent({required this.login, required this.password});

  @override
  final String login;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signIn(login: $login, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInEvent &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, login, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInEventCopyWith<_$_SignInEvent> get copyWith =>
      __$$_SignInEventCopyWithImpl<_$_SignInEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) changeState,
    required TResult Function() checkAuth,
    required TResult Function() clearUserId,
    required TResult Function(String login, String password) signIn,
    required TResult Function() clearSignInError,
    required TResult Function(String login, String password) signUp,
    required TResult Function() clearSignUpError,
    required TResult Function() signOut,
    required TResult Function() clearSignOutError,
    required TResult Function() clear,
  }) {
    return signIn(login, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function()? checkAuth,
    TResult? Function()? clearUserId,
    TResult? Function(String login, String password)? signIn,
    TResult? Function()? clearSignInError,
    TResult? Function(String login, String password)? signUp,
    TResult? Function()? clearSignUpError,
    TResult? Function()? signOut,
    TResult? Function()? clearSignOutError,
    TResult? Function()? clear,
  }) {
    return signIn?.call(login, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function()? checkAuth,
    TResult Function()? clearUserId,
    TResult Function(String login, String password)? signIn,
    TResult Function()? clearSignInError,
    TResult Function(String login, String password)? signUp,
    TResult Function()? clearSignUpError,
    TResult Function()? signOut,
    TResult Function()? clearSignOutError,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(login, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStateEvent value) changeState,
    required TResult Function(_CheckAuthEvent value) checkAuth,
    required TResult Function(_ClearUserIdEvent value) clearUserId,
    required TResult Function(_SignInEvent value) signIn,
    required TResult Function(_ClearSignInErrorEvent value) clearSignInError,
    required TResult Function(_SignUpEvent value) signUp,
    required TResult Function(_ClearSignUpErrorEvent value) clearSignUpError,
    required TResult Function(_SignOutEvent value) signOut,
    required TResult Function(_ClearSignOutErrorEvent value) clearSignOutError,
    required TResult Function(_ClearEvent value) clear,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_CheckAuthEvent value)? checkAuth,
    TResult? Function(_ClearUserIdEvent value)? clearUserId,
    TResult? Function(_SignInEvent value)? signIn,
    TResult? Function(_ClearSignInErrorEvent value)? clearSignInError,
    TResult? Function(_SignUpEvent value)? signUp,
    TResult? Function(_ClearSignUpErrorEvent value)? clearSignUpError,
    TResult? Function(_SignOutEvent value)? signOut,
    TResult? Function(_ClearSignOutErrorEvent value)? clearSignOutError,
    TResult? Function(_ClearEvent value)? clear,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_CheckAuthEvent value)? checkAuth,
    TResult Function(_ClearUserIdEvent value)? clearUserId,
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_ClearSignInErrorEvent value)? clearSignInError,
    TResult Function(_SignUpEvent value)? signUp,
    TResult Function(_ClearSignUpErrorEvent value)? clearSignUpError,
    TResult Function(_SignOutEvent value)? signOut,
    TResult Function(_ClearSignOutErrorEvent value)? clearSignOutError,
    TResult Function(_ClearEvent value)? clear,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _SignInEvent implements AuthEvent {
  const factory _SignInEvent(
      {required final String login,
      required final String password}) = _$_SignInEvent;

  String get login;
  String get password;
  @JsonKey(ignore: true)
  _$$_SignInEventCopyWith<_$_SignInEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearSignInErrorEventCopyWith<$Res> {
  factory _$$_ClearSignInErrorEventCopyWith(_$_ClearSignInErrorEvent value,
          $Res Function(_$_ClearSignInErrorEvent) then) =
      __$$_ClearSignInErrorEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearSignInErrorEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_ClearSignInErrorEvent>
    implements _$$_ClearSignInErrorEventCopyWith<$Res> {
  __$$_ClearSignInErrorEventCopyWithImpl(_$_ClearSignInErrorEvent _value,
      $Res Function(_$_ClearSignInErrorEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearSignInErrorEvent implements _ClearSignInErrorEvent {
  const _$_ClearSignInErrorEvent();

  @override
  String toString() {
    return 'AuthEvent.clearSignInError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClearSignInErrorEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) changeState,
    required TResult Function() checkAuth,
    required TResult Function() clearUserId,
    required TResult Function(String login, String password) signIn,
    required TResult Function() clearSignInError,
    required TResult Function(String login, String password) signUp,
    required TResult Function() clearSignUpError,
    required TResult Function() signOut,
    required TResult Function() clearSignOutError,
    required TResult Function() clear,
  }) {
    return clearSignInError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function()? checkAuth,
    TResult? Function()? clearUserId,
    TResult? Function(String login, String password)? signIn,
    TResult? Function()? clearSignInError,
    TResult? Function(String login, String password)? signUp,
    TResult? Function()? clearSignUpError,
    TResult? Function()? signOut,
    TResult? Function()? clearSignOutError,
    TResult? Function()? clear,
  }) {
    return clearSignInError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function()? checkAuth,
    TResult Function()? clearUserId,
    TResult Function(String login, String password)? signIn,
    TResult Function()? clearSignInError,
    TResult Function(String login, String password)? signUp,
    TResult Function()? clearSignUpError,
    TResult Function()? signOut,
    TResult Function()? clearSignOutError,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (clearSignInError != null) {
      return clearSignInError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStateEvent value) changeState,
    required TResult Function(_CheckAuthEvent value) checkAuth,
    required TResult Function(_ClearUserIdEvent value) clearUserId,
    required TResult Function(_SignInEvent value) signIn,
    required TResult Function(_ClearSignInErrorEvent value) clearSignInError,
    required TResult Function(_SignUpEvent value) signUp,
    required TResult Function(_ClearSignUpErrorEvent value) clearSignUpError,
    required TResult Function(_SignOutEvent value) signOut,
    required TResult Function(_ClearSignOutErrorEvent value) clearSignOutError,
    required TResult Function(_ClearEvent value) clear,
  }) {
    return clearSignInError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_CheckAuthEvent value)? checkAuth,
    TResult? Function(_ClearUserIdEvent value)? clearUserId,
    TResult? Function(_SignInEvent value)? signIn,
    TResult? Function(_ClearSignInErrorEvent value)? clearSignInError,
    TResult? Function(_SignUpEvent value)? signUp,
    TResult? Function(_ClearSignUpErrorEvent value)? clearSignUpError,
    TResult? Function(_SignOutEvent value)? signOut,
    TResult? Function(_ClearSignOutErrorEvent value)? clearSignOutError,
    TResult? Function(_ClearEvent value)? clear,
  }) {
    return clearSignInError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_CheckAuthEvent value)? checkAuth,
    TResult Function(_ClearUserIdEvent value)? clearUserId,
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_ClearSignInErrorEvent value)? clearSignInError,
    TResult Function(_SignUpEvent value)? signUp,
    TResult Function(_ClearSignUpErrorEvent value)? clearSignUpError,
    TResult Function(_SignOutEvent value)? signOut,
    TResult Function(_ClearSignOutErrorEvent value)? clearSignOutError,
    TResult Function(_ClearEvent value)? clear,
    required TResult orElse(),
  }) {
    if (clearSignInError != null) {
      return clearSignInError(this);
    }
    return orElse();
  }
}

abstract class _ClearSignInErrorEvent implements AuthEvent {
  const factory _ClearSignInErrorEvent() = _$_ClearSignInErrorEvent;
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
    extends _$AuthEventCopyWithImpl<$Res, _$_SignUpEvent>
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
    return 'AuthEvent.signUp(login: $login, password: $password)';
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
    required TResult Function() checkAuth,
    required TResult Function() clearUserId,
    required TResult Function(String login, String password) signIn,
    required TResult Function() clearSignInError,
    required TResult Function(String login, String password) signUp,
    required TResult Function() clearSignUpError,
    required TResult Function() signOut,
    required TResult Function() clearSignOutError,
    required TResult Function() clear,
  }) {
    return signUp(login, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function()? checkAuth,
    TResult? Function()? clearUserId,
    TResult? Function(String login, String password)? signIn,
    TResult? Function()? clearSignInError,
    TResult? Function(String login, String password)? signUp,
    TResult? Function()? clearSignUpError,
    TResult? Function()? signOut,
    TResult? Function()? clearSignOutError,
    TResult? Function()? clear,
  }) {
    return signUp?.call(login, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function()? checkAuth,
    TResult Function()? clearUserId,
    TResult Function(String login, String password)? signIn,
    TResult Function()? clearSignInError,
    TResult Function(String login, String password)? signUp,
    TResult Function()? clearSignUpError,
    TResult Function()? signOut,
    TResult Function()? clearSignOutError,
    TResult Function()? clear,
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
    required TResult Function(_CheckAuthEvent value) checkAuth,
    required TResult Function(_ClearUserIdEvent value) clearUserId,
    required TResult Function(_SignInEvent value) signIn,
    required TResult Function(_ClearSignInErrorEvent value) clearSignInError,
    required TResult Function(_SignUpEvent value) signUp,
    required TResult Function(_ClearSignUpErrorEvent value) clearSignUpError,
    required TResult Function(_SignOutEvent value) signOut,
    required TResult Function(_ClearSignOutErrorEvent value) clearSignOutError,
    required TResult Function(_ClearEvent value) clear,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_CheckAuthEvent value)? checkAuth,
    TResult? Function(_ClearUserIdEvent value)? clearUserId,
    TResult? Function(_SignInEvent value)? signIn,
    TResult? Function(_ClearSignInErrorEvent value)? clearSignInError,
    TResult? Function(_SignUpEvent value)? signUp,
    TResult? Function(_ClearSignUpErrorEvent value)? clearSignUpError,
    TResult? Function(_SignOutEvent value)? signOut,
    TResult? Function(_ClearSignOutErrorEvent value)? clearSignOutError,
    TResult? Function(_ClearEvent value)? clear,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_CheckAuthEvent value)? checkAuth,
    TResult Function(_ClearUserIdEvent value)? clearUserId,
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_ClearSignInErrorEvent value)? clearSignInError,
    TResult Function(_SignUpEvent value)? signUp,
    TResult Function(_ClearSignUpErrorEvent value)? clearSignUpError,
    TResult Function(_SignOutEvent value)? signOut,
    TResult Function(_ClearSignOutErrorEvent value)? clearSignOutError,
    TResult Function(_ClearEvent value)? clear,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class _SignUpEvent implements AuthEvent {
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
abstract class _$$_ClearSignUpErrorEventCopyWith<$Res> {
  factory _$$_ClearSignUpErrorEventCopyWith(_$_ClearSignUpErrorEvent value,
          $Res Function(_$_ClearSignUpErrorEvent) then) =
      __$$_ClearSignUpErrorEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearSignUpErrorEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_ClearSignUpErrorEvent>
    implements _$$_ClearSignUpErrorEventCopyWith<$Res> {
  __$$_ClearSignUpErrorEventCopyWithImpl(_$_ClearSignUpErrorEvent _value,
      $Res Function(_$_ClearSignUpErrorEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearSignUpErrorEvent implements _ClearSignUpErrorEvent {
  const _$_ClearSignUpErrorEvent();

  @override
  String toString() {
    return 'AuthEvent.clearSignUpError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClearSignUpErrorEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) changeState,
    required TResult Function() checkAuth,
    required TResult Function() clearUserId,
    required TResult Function(String login, String password) signIn,
    required TResult Function() clearSignInError,
    required TResult Function(String login, String password) signUp,
    required TResult Function() clearSignUpError,
    required TResult Function() signOut,
    required TResult Function() clearSignOutError,
    required TResult Function() clear,
  }) {
    return clearSignUpError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function()? checkAuth,
    TResult? Function()? clearUserId,
    TResult? Function(String login, String password)? signIn,
    TResult? Function()? clearSignInError,
    TResult? Function(String login, String password)? signUp,
    TResult? Function()? clearSignUpError,
    TResult? Function()? signOut,
    TResult? Function()? clearSignOutError,
    TResult? Function()? clear,
  }) {
    return clearSignUpError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function()? checkAuth,
    TResult Function()? clearUserId,
    TResult Function(String login, String password)? signIn,
    TResult Function()? clearSignInError,
    TResult Function(String login, String password)? signUp,
    TResult Function()? clearSignUpError,
    TResult Function()? signOut,
    TResult Function()? clearSignOutError,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (clearSignUpError != null) {
      return clearSignUpError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStateEvent value) changeState,
    required TResult Function(_CheckAuthEvent value) checkAuth,
    required TResult Function(_ClearUserIdEvent value) clearUserId,
    required TResult Function(_SignInEvent value) signIn,
    required TResult Function(_ClearSignInErrorEvent value) clearSignInError,
    required TResult Function(_SignUpEvent value) signUp,
    required TResult Function(_ClearSignUpErrorEvent value) clearSignUpError,
    required TResult Function(_SignOutEvent value) signOut,
    required TResult Function(_ClearSignOutErrorEvent value) clearSignOutError,
    required TResult Function(_ClearEvent value) clear,
  }) {
    return clearSignUpError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_CheckAuthEvent value)? checkAuth,
    TResult? Function(_ClearUserIdEvent value)? clearUserId,
    TResult? Function(_SignInEvent value)? signIn,
    TResult? Function(_ClearSignInErrorEvent value)? clearSignInError,
    TResult? Function(_SignUpEvent value)? signUp,
    TResult? Function(_ClearSignUpErrorEvent value)? clearSignUpError,
    TResult? Function(_SignOutEvent value)? signOut,
    TResult? Function(_ClearSignOutErrorEvent value)? clearSignOutError,
    TResult? Function(_ClearEvent value)? clear,
  }) {
    return clearSignUpError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_CheckAuthEvent value)? checkAuth,
    TResult Function(_ClearUserIdEvent value)? clearUserId,
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_ClearSignInErrorEvent value)? clearSignInError,
    TResult Function(_SignUpEvent value)? signUp,
    TResult Function(_ClearSignUpErrorEvent value)? clearSignUpError,
    TResult Function(_SignOutEvent value)? signOut,
    TResult Function(_ClearSignOutErrorEvent value)? clearSignOutError,
    TResult Function(_ClearEvent value)? clear,
    required TResult orElse(),
  }) {
    if (clearSignUpError != null) {
      return clearSignUpError(this);
    }
    return orElse();
  }
}

abstract class _ClearSignUpErrorEvent implements AuthEvent {
  const factory _ClearSignUpErrorEvent() = _$_ClearSignUpErrorEvent;
}

/// @nodoc
abstract class _$$_SignOutEventCopyWith<$Res> {
  factory _$$_SignOutEventCopyWith(
          _$_SignOutEvent value, $Res Function(_$_SignOutEvent) then) =
      __$$_SignOutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignOutEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignOutEvent>
    implements _$$_SignOutEventCopyWith<$Res> {
  __$$_SignOutEventCopyWithImpl(
      _$_SignOutEvent _value, $Res Function(_$_SignOutEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignOutEvent implements _SignOutEvent {
  const _$_SignOutEvent();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignOutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) changeState,
    required TResult Function() checkAuth,
    required TResult Function() clearUserId,
    required TResult Function(String login, String password) signIn,
    required TResult Function() clearSignInError,
    required TResult Function(String login, String password) signUp,
    required TResult Function() clearSignUpError,
    required TResult Function() signOut,
    required TResult Function() clearSignOutError,
    required TResult Function() clear,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function()? checkAuth,
    TResult? Function()? clearUserId,
    TResult? Function(String login, String password)? signIn,
    TResult? Function()? clearSignInError,
    TResult? Function(String login, String password)? signUp,
    TResult? Function()? clearSignUpError,
    TResult? Function()? signOut,
    TResult? Function()? clearSignOutError,
    TResult? Function()? clear,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function()? checkAuth,
    TResult Function()? clearUserId,
    TResult Function(String login, String password)? signIn,
    TResult Function()? clearSignInError,
    TResult Function(String login, String password)? signUp,
    TResult Function()? clearSignUpError,
    TResult Function()? signOut,
    TResult Function()? clearSignOutError,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStateEvent value) changeState,
    required TResult Function(_CheckAuthEvent value) checkAuth,
    required TResult Function(_ClearUserIdEvent value) clearUserId,
    required TResult Function(_SignInEvent value) signIn,
    required TResult Function(_ClearSignInErrorEvent value) clearSignInError,
    required TResult Function(_SignUpEvent value) signUp,
    required TResult Function(_ClearSignUpErrorEvent value) clearSignUpError,
    required TResult Function(_SignOutEvent value) signOut,
    required TResult Function(_ClearSignOutErrorEvent value) clearSignOutError,
    required TResult Function(_ClearEvent value) clear,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_CheckAuthEvent value)? checkAuth,
    TResult? Function(_ClearUserIdEvent value)? clearUserId,
    TResult? Function(_SignInEvent value)? signIn,
    TResult? Function(_ClearSignInErrorEvent value)? clearSignInError,
    TResult? Function(_SignUpEvent value)? signUp,
    TResult? Function(_ClearSignUpErrorEvent value)? clearSignUpError,
    TResult? Function(_SignOutEvent value)? signOut,
    TResult? Function(_ClearSignOutErrorEvent value)? clearSignOutError,
    TResult? Function(_ClearEvent value)? clear,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_CheckAuthEvent value)? checkAuth,
    TResult Function(_ClearUserIdEvent value)? clearUserId,
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_ClearSignInErrorEvent value)? clearSignInError,
    TResult Function(_SignUpEvent value)? signUp,
    TResult Function(_ClearSignUpErrorEvent value)? clearSignUpError,
    TResult Function(_SignOutEvent value)? signOut,
    TResult Function(_ClearSignOutErrorEvent value)? clearSignOutError,
    TResult Function(_ClearEvent value)? clear,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOutEvent implements AuthEvent {
  const factory _SignOutEvent() = _$_SignOutEvent;
}

/// @nodoc
abstract class _$$_ClearSignOutErrorEventCopyWith<$Res> {
  factory _$$_ClearSignOutErrorEventCopyWith(_$_ClearSignOutErrorEvent value,
          $Res Function(_$_ClearSignOutErrorEvent) then) =
      __$$_ClearSignOutErrorEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearSignOutErrorEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_ClearSignOutErrorEvent>
    implements _$$_ClearSignOutErrorEventCopyWith<$Res> {
  __$$_ClearSignOutErrorEventCopyWithImpl(_$_ClearSignOutErrorEvent _value,
      $Res Function(_$_ClearSignOutErrorEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearSignOutErrorEvent implements _ClearSignOutErrorEvent {
  const _$_ClearSignOutErrorEvent();

  @override
  String toString() {
    return 'AuthEvent.clearSignOutError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClearSignOutErrorEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) changeState,
    required TResult Function() checkAuth,
    required TResult Function() clearUserId,
    required TResult Function(String login, String password) signIn,
    required TResult Function() clearSignInError,
    required TResult Function(String login, String password) signUp,
    required TResult Function() clearSignUpError,
    required TResult Function() signOut,
    required TResult Function() clearSignOutError,
    required TResult Function() clear,
  }) {
    return clearSignOutError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function()? checkAuth,
    TResult? Function()? clearUserId,
    TResult? Function(String login, String password)? signIn,
    TResult? Function()? clearSignInError,
    TResult? Function(String login, String password)? signUp,
    TResult? Function()? clearSignUpError,
    TResult? Function()? signOut,
    TResult? Function()? clearSignOutError,
    TResult? Function()? clear,
  }) {
    return clearSignOutError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function()? checkAuth,
    TResult Function()? clearUserId,
    TResult Function(String login, String password)? signIn,
    TResult Function()? clearSignInError,
    TResult Function(String login, String password)? signUp,
    TResult Function()? clearSignUpError,
    TResult Function()? signOut,
    TResult Function()? clearSignOutError,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (clearSignOutError != null) {
      return clearSignOutError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStateEvent value) changeState,
    required TResult Function(_CheckAuthEvent value) checkAuth,
    required TResult Function(_ClearUserIdEvent value) clearUserId,
    required TResult Function(_SignInEvent value) signIn,
    required TResult Function(_ClearSignInErrorEvent value) clearSignInError,
    required TResult Function(_SignUpEvent value) signUp,
    required TResult Function(_ClearSignUpErrorEvent value) clearSignUpError,
    required TResult Function(_SignOutEvent value) signOut,
    required TResult Function(_ClearSignOutErrorEvent value) clearSignOutError,
    required TResult Function(_ClearEvent value) clear,
  }) {
    return clearSignOutError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_CheckAuthEvent value)? checkAuth,
    TResult? Function(_ClearUserIdEvent value)? clearUserId,
    TResult? Function(_SignInEvent value)? signIn,
    TResult? Function(_ClearSignInErrorEvent value)? clearSignInError,
    TResult? Function(_SignUpEvent value)? signUp,
    TResult? Function(_ClearSignUpErrorEvent value)? clearSignUpError,
    TResult? Function(_SignOutEvent value)? signOut,
    TResult? Function(_ClearSignOutErrorEvent value)? clearSignOutError,
    TResult? Function(_ClearEvent value)? clear,
  }) {
    return clearSignOutError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_CheckAuthEvent value)? checkAuth,
    TResult Function(_ClearUserIdEvent value)? clearUserId,
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_ClearSignInErrorEvent value)? clearSignInError,
    TResult Function(_SignUpEvent value)? signUp,
    TResult Function(_ClearSignUpErrorEvent value)? clearSignUpError,
    TResult Function(_SignOutEvent value)? signOut,
    TResult Function(_ClearSignOutErrorEvent value)? clearSignOutError,
    TResult Function(_ClearEvent value)? clear,
    required TResult orElse(),
  }) {
    if (clearSignOutError != null) {
      return clearSignOutError(this);
    }
    return orElse();
  }
}

abstract class _ClearSignOutErrorEvent implements AuthEvent {
  const factory _ClearSignOutErrorEvent() = _$_ClearSignOutErrorEvent;
}

/// @nodoc
abstract class _$$_ClearEventCopyWith<$Res> {
  factory _$$_ClearEventCopyWith(
          _$_ClearEvent value, $Res Function(_$_ClearEvent) then) =
      __$$_ClearEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_ClearEvent>
    implements _$$_ClearEventCopyWith<$Res> {
  __$$_ClearEventCopyWithImpl(
      _$_ClearEvent _value, $Res Function(_$_ClearEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearEvent implements _ClearEvent {
  const _$_ClearEvent();

  @override
  String toString() {
    return 'AuthEvent.clear()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClearEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) changeState,
    required TResult Function() checkAuth,
    required TResult Function() clearUserId,
    required TResult Function(String login, String password) signIn,
    required TResult Function() clearSignInError,
    required TResult Function(String login, String password) signUp,
    required TResult Function() clearSignUpError,
    required TResult Function() signOut,
    required TResult Function() clearSignOutError,
    required TResult Function() clear,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function()? checkAuth,
    TResult? Function()? clearUserId,
    TResult? Function(String login, String password)? signIn,
    TResult? Function()? clearSignInError,
    TResult? Function(String login, String password)? signUp,
    TResult? Function()? clearSignUpError,
    TResult? Function()? signOut,
    TResult? Function()? clearSignOutError,
    TResult? Function()? clear,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function()? checkAuth,
    TResult Function()? clearUserId,
    TResult Function(String login, String password)? signIn,
    TResult Function()? clearSignInError,
    TResult Function(String login, String password)? signUp,
    TResult Function()? clearSignUpError,
    TResult Function()? signOut,
    TResult Function()? clearSignOutError,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStateEvent value) changeState,
    required TResult Function(_CheckAuthEvent value) checkAuth,
    required TResult Function(_ClearUserIdEvent value) clearUserId,
    required TResult Function(_SignInEvent value) signIn,
    required TResult Function(_ClearSignInErrorEvent value) clearSignInError,
    required TResult Function(_SignUpEvent value) signUp,
    required TResult Function(_ClearSignUpErrorEvent value) clearSignUpError,
    required TResult Function(_SignOutEvent value) signOut,
    required TResult Function(_ClearSignOutErrorEvent value) clearSignOutError,
    required TResult Function(_ClearEvent value) clear,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_CheckAuthEvent value)? checkAuth,
    TResult? Function(_ClearUserIdEvent value)? clearUserId,
    TResult? Function(_SignInEvent value)? signIn,
    TResult? Function(_ClearSignInErrorEvent value)? clearSignInError,
    TResult? Function(_SignUpEvent value)? signUp,
    TResult? Function(_ClearSignUpErrorEvent value)? clearSignUpError,
    TResult? Function(_SignOutEvent value)? signOut,
    TResult? Function(_ClearSignOutErrorEvent value)? clearSignOutError,
    TResult? Function(_ClearEvent value)? clear,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_CheckAuthEvent value)? checkAuth,
    TResult Function(_ClearUserIdEvent value)? clearUserId,
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_ClearSignInErrorEvent value)? clearSignInError,
    TResult Function(_SignUpEvent value)? signUp,
    TResult Function(_ClearSignUpErrorEvent value)? clearSignUpError,
    TResult Function(_SignOutEvent value)? signOut,
    TResult Function(_ClearSignOutErrorEvent value)? clearSignOutError,
    TResult Function(_ClearEvent value)? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _ClearEvent implements AuthEvent {
  const factory _ClearEvent() = _$_ClearEvent;
}
