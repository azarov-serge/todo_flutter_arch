// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'resource_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResourceState<D> {
  bool get loading => throw _privateConstructorUsedError;
  bool get loaded => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  D? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResourceStateCopyWith<D, ResourceState<D>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceStateCopyWith<D, $Res> {
  factory $ResourceStateCopyWith(
          ResourceState<D> value, $Res Function(ResourceState<D>) then) =
      _$ResourceStateCopyWithImpl<D, $Res, ResourceState<D>>;
  @useResult
  $Res call({bool loading, bool loaded, String error, D? data});
}

/// @nodoc
class _$ResourceStateCopyWithImpl<D, $Res, $Val extends ResourceState<D>>
    implements $ResourceStateCopyWith<D, $Res> {
  _$ResourceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? loaded = null,
    Object? error = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      loaded: null == loaded
          ? _value.loaded
          : loaded // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as D?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResourceStateCopyWith<D, $Res>
    implements $ResourceStateCopyWith<D, $Res> {
  factory _$$_ResourceStateCopyWith(
          _$_ResourceState<D> value, $Res Function(_$_ResourceState<D>) then) =
      __$$_ResourceStateCopyWithImpl<D, $Res>;
  @override
  @useResult
  $Res call({bool loading, bool loaded, String error, D? data});
}

/// @nodoc
class __$$_ResourceStateCopyWithImpl<D, $Res>
    extends _$ResourceStateCopyWithImpl<D, $Res, _$_ResourceState<D>>
    implements _$$_ResourceStateCopyWith<D, $Res> {
  __$$_ResourceStateCopyWithImpl(
      _$_ResourceState<D> _value, $Res Function(_$_ResourceState<D>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? loaded = null,
    Object? error = null,
    Object? data = freezed,
  }) {
    return _then(_$_ResourceState<D>(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      loaded: null == loaded
          ? _value.loaded
          : loaded // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as D?,
    ));
  }
}

/// @nodoc

class _$_ResourceState<D> implements _ResourceState<D> {
  const _$_ResourceState(
      {this.loading = false, this.loaded = false, this.error = '', this.data});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool loaded;
  @override
  @JsonKey()
  final String error;
  @override
  final D? data;

  @override
  String toString() {
    return 'ResourceState<$D>(loading: $loading, loaded: $loaded, error: $error, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResourceState<D> &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.loaded, loaded) || other.loaded == loaded) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, loaded, error,
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResourceStateCopyWith<D, _$_ResourceState<D>> get copyWith =>
      __$$_ResourceStateCopyWithImpl<D, _$_ResourceState<D>>(this, _$identity);
}

abstract class _ResourceState<D> implements ResourceState<D> {
  const factory _ResourceState(
      {final bool loading,
      final bool loaded,
      final String error,
      final D? data}) = _$_ResourceState<D>;

  @override
  bool get loading;
  @override
  bool get loaded;
  @override
  String get error;
  @override
  D? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ResourceStateCopyWith<D, _$_ResourceState<D>> get copyWith =>
      throw _privateConstructorUsedError;
}
