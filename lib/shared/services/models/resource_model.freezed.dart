// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'resource_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResourceModel _$ResourceModelFromJson(Map<String, dynamic> json) {
  return _ResourceModel.fromJson(json);
}

/// @nodoc
mixin _$ResourceModel {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  /// true - идет запрос, false - запрос окончен
  @JsonKey(name: 'loading')
  bool get loading => throw _privateConstructorUsedError;

  /// false - запрос не закончен, true - запрос окончен
  @JsonKey(name: 'loaded')
  bool get loaded => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  dynamic get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'error')
  String get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResourceModelCopyWith<ResourceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceModelCopyWith<$Res> {
  factory $ResourceModelCopyWith(
          ResourceModel value, $Res Function(ResourceModel) then) =
      _$ResourceModelCopyWithImpl<$Res, ResourceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'loading') bool loading,
      @JsonKey(name: 'loaded') bool loaded,
      @JsonKey(name: 'data') dynamic data,
      @JsonKey(name: 'error') String error});
}

/// @nodoc
class _$ResourceModelCopyWithImpl<$Res, $Val extends ResourceModel>
    implements $ResourceModelCopyWith<$Res> {
  _$ResourceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? loading = null,
    Object? loaded = null,
    Object? data = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      loaded: null == loaded
          ? _value.loaded
          : loaded // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResourceModelCopyWith<$Res>
    implements $ResourceModelCopyWith<$Res> {
  factory _$$_ResourceModelCopyWith(
          _$_ResourceModel value, $Res Function(_$_ResourceModel) then) =
      __$$_ResourceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'loading') bool loading,
      @JsonKey(name: 'loaded') bool loaded,
      @JsonKey(name: 'data') dynamic data,
      @JsonKey(name: 'error') String error});
}

/// @nodoc
class __$$_ResourceModelCopyWithImpl<$Res>
    extends _$ResourceModelCopyWithImpl<$Res, _$_ResourceModel>
    implements _$$_ResourceModelCopyWith<$Res> {
  __$$_ResourceModelCopyWithImpl(
      _$_ResourceModel _value, $Res Function(_$_ResourceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? loading = null,
    Object? loaded = null,
    Object? data = null,
    Object? error = null,
  }) {
    return _then(_$_ResourceModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      loaded: null == loaded
          ? _value.loaded
          : loaded // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResourceModel extends _ResourceModel {
  const _$_ResourceModel(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'loading') this.loading = false,
      @JsonKey(name: 'loaded') this.loaded = false,
      @JsonKey(name: 'data') this.data,
      @JsonKey(name: 'error') this.error = ''})
      : super._();

  factory _$_ResourceModel.fromJson(Map<String, dynamic> json) =>
      _$$_ResourceModelFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;

  /// true - идет запрос, false - запрос окончен
  @override
  @JsonKey(name: 'loading')
  final bool loading;

  /// false - запрос не закончен, true - запрос окончен
  @override
  @JsonKey(name: 'loaded')
  final bool loaded;
  @override
  @JsonKey(name: 'data')
  final dynamic data;
  @override
  @JsonKey(name: 'error')
  final String error;

  @override
  String toString() {
    return 'ResourceModel(name: $name, loading: $loading, loaded: $loaded, data: $data, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResourceModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.loaded, loaded) || other.loaded == loaded) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, loading, loaded,
      const DeepCollectionEquality().hash(data), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResourceModelCopyWith<_$_ResourceModel> get copyWith =>
      __$$_ResourceModelCopyWithImpl<_$_ResourceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResourceModelToJson(
      this,
    );
  }
}

abstract class _ResourceModel extends ResourceModel {
  const factory _ResourceModel(
      {@JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'loading') final bool loading,
      @JsonKey(name: 'loaded') final bool loaded,
      @JsonKey(name: 'data') final dynamic data,
      @JsonKey(name: 'error') final String error}) = _$_ResourceModel;
  const _ResourceModel._() : super._();

  factory _ResourceModel.fromJson(Map<String, dynamic> json) =
      _$_ResourceModel.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override

  /// true - идет запрос, false - запрос окончен
  @JsonKey(name: 'loading')
  bool get loading;
  @override

  /// false - запрос не закончен, true - запрос окончен
  @JsonKey(name: 'loaded')
  bool get loaded;
  @override
  @JsonKey(name: 'data')
  dynamic get data;
  @override
  @JsonKey(name: 'error')
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$_ResourceModelCopyWith<_$_ResourceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
