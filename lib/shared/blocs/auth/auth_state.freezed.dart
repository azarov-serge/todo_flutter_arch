// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  ResourceModel get signInResource => throw _privateConstructorUsedError;
  ResourceModel get signUpResource => throw _privateConstructorUsedError;
  ResourceModel get signOutResource => throw _privateConstructorUsedError;
  ResourceModel get checkAuthResource => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {ResourceModel signInResource,
      ResourceModel signUpResource,
      ResourceModel signOutResource,
      ResourceModel checkAuthResource});

  $ResourceModelCopyWith<$Res> get signInResource;
  $ResourceModelCopyWith<$Res> get signUpResource;
  $ResourceModelCopyWith<$Res> get signOutResource;
  $ResourceModelCopyWith<$Res> get checkAuthResource;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signInResource = null,
    Object? signUpResource = null,
    Object? signOutResource = null,
    Object? checkAuthResource = null,
  }) {
    return _then(_value.copyWith(
      signInResource: null == signInResource
          ? _value.signInResource
          : signInResource // ignore: cast_nullable_to_non_nullable
              as ResourceModel,
      signUpResource: null == signUpResource
          ? _value.signUpResource
          : signUpResource // ignore: cast_nullable_to_non_nullable
              as ResourceModel,
      signOutResource: null == signOutResource
          ? _value.signOutResource
          : signOutResource // ignore: cast_nullable_to_non_nullable
              as ResourceModel,
      checkAuthResource: null == checkAuthResource
          ? _value.checkAuthResource
          : checkAuthResource // ignore: cast_nullable_to_non_nullable
              as ResourceModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResourceModelCopyWith<$Res> get signInResource {
    return $ResourceModelCopyWith<$Res>(_value.signInResource, (value) {
      return _then(_value.copyWith(signInResource: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ResourceModelCopyWith<$Res> get signUpResource {
    return $ResourceModelCopyWith<$Res>(_value.signUpResource, (value) {
      return _then(_value.copyWith(signUpResource: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ResourceModelCopyWith<$Res> get signOutResource {
    return $ResourceModelCopyWith<$Res>(_value.signOutResource, (value) {
      return _then(_value.copyWith(signOutResource: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ResourceModelCopyWith<$Res> get checkAuthResource {
    return $ResourceModelCopyWith<$Res>(_value.checkAuthResource, (value) {
      return _then(_value.copyWith(checkAuthResource: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResourceModel signInResource,
      ResourceModel signUpResource,
      ResourceModel signOutResource,
      ResourceModel checkAuthResource});

  @override
  $ResourceModelCopyWith<$Res> get signInResource;
  @override
  $ResourceModelCopyWith<$Res> get signUpResource;
  @override
  $ResourceModelCopyWith<$Res> get signOutResource;
  @override
  $ResourceModelCopyWith<$Res> get checkAuthResource;
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signInResource = null,
    Object? signUpResource = null,
    Object? signOutResource = null,
    Object? checkAuthResource = null,
  }) {
    return _then(_$_AuthState(
      signInResource: null == signInResource
          ? _value.signInResource
          : signInResource // ignore: cast_nullable_to_non_nullable
              as ResourceModel,
      signUpResource: null == signUpResource
          ? _value.signUpResource
          : signUpResource // ignore: cast_nullable_to_non_nullable
              as ResourceModel,
      signOutResource: null == signOutResource
          ? _value.signOutResource
          : signOutResource // ignore: cast_nullable_to_non_nullable
              as ResourceModel,
      checkAuthResource: null == checkAuthResource
          ? _value.checkAuthResource
          : checkAuthResource // ignore: cast_nullable_to_non_nullable
              as ResourceModel,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {this.signInResource = const ResourceModel(name: ''),
      this.signUpResource = const ResourceModel(name: ''),
      this.signOutResource = const ResourceModel(name: ''),
      this.checkAuthResource = const ResourceModel(name: '')});

  @override
  @JsonKey()
  final ResourceModel signInResource;
  @override
  @JsonKey()
  final ResourceModel signUpResource;
  @override
  @JsonKey()
  final ResourceModel signOutResource;
  @override
  @JsonKey()
  final ResourceModel checkAuthResource;

  @override
  String toString() {
    return 'AuthState(signInResource: $signInResource, signUpResource: $signUpResource, signOutResource: $signOutResource, checkAuthResource: $checkAuthResource)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.signInResource, signInResource) ||
                other.signInResource == signInResource) &&
            (identical(other.signUpResource, signUpResource) ||
                other.signUpResource == signUpResource) &&
            (identical(other.signOutResource, signOutResource) ||
                other.signOutResource == signOutResource) &&
            (identical(other.checkAuthResource, checkAuthResource) ||
                other.checkAuthResource == checkAuthResource));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signInResource, signUpResource,
      signOutResource, checkAuthResource);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final ResourceModel signInResource,
      final ResourceModel signUpResource,
      final ResourceModel signOutResource,
      final ResourceModel checkAuthResource}) = _$_AuthState;

  @override
  ResourceModel get signInResource;
  @override
  ResourceModel get signUpResource;
  @override
  ResourceModel get signOutResource;
  @override
  ResourceModel get checkAuthResource;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
