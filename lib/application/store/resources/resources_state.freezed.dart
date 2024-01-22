// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'resources_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResourcesState _$ResourcesStateFromJson(Map<String, dynamic> json) {
  return _ResourcesState.fromJson(json);
}

/// @nodoc
mixin _$ResourcesState {
  @JsonKey(name: 'resources')
  Map<String, ResourceModel> get resources =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResourcesStateCopyWith<ResourcesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourcesStateCopyWith<$Res> {
  factory $ResourcesStateCopyWith(
          ResourcesState value, $Res Function(ResourcesState) then) =
      _$ResourcesStateCopyWithImpl<$Res, ResourcesState>;
  @useResult
  $Res call({@JsonKey(name: 'resources') Map<String, ResourceModel> resources});
}

/// @nodoc
class _$ResourcesStateCopyWithImpl<$Res, $Val extends ResourcesState>
    implements $ResourcesStateCopyWith<$Res> {
  _$ResourcesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resources = null,
  }) {
    return _then(_value.copyWith(
      resources: null == resources
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as Map<String, ResourceModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResourcesStateCopyWith<$Res>
    implements $ResourcesStateCopyWith<$Res> {
  factory _$$_ResourcesStateCopyWith(
          _$_ResourcesState value, $Res Function(_$_ResourcesState) then) =
      __$$_ResourcesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'resources') Map<String, ResourceModel> resources});
}

/// @nodoc
class __$$_ResourcesStateCopyWithImpl<$Res>
    extends _$ResourcesStateCopyWithImpl<$Res, _$_ResourcesState>
    implements _$$_ResourcesStateCopyWith<$Res> {
  __$$_ResourcesStateCopyWithImpl(
      _$_ResourcesState _value, $Res Function(_$_ResourcesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resources = null,
  }) {
    return _then(_$_ResourcesState(
      resources: null == resources
          ? _value._resources
          : resources // ignore: cast_nullable_to_non_nullable
              as Map<String, ResourceModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResourcesState extends _ResourcesState {
  const _$_ResourcesState(
      {@JsonKey(name: 'resources')
      final Map<String, ResourceModel> resources = const {}})
      : _resources = resources,
        super._();

  factory _$_ResourcesState.fromJson(Map<String, dynamic> json) =>
      _$$_ResourcesStateFromJson(json);

  final Map<String, ResourceModel> _resources;
  @override
  @JsonKey(name: 'resources')
  Map<String, ResourceModel> get resources {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_resources);
  }

  @override
  String toString() {
    return 'ResourcesState(resources: $resources)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResourcesState &&
            const DeepCollectionEquality()
                .equals(other._resources, _resources));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_resources));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResourcesStateCopyWith<_$_ResourcesState> get copyWith =>
      __$$_ResourcesStateCopyWithImpl<_$_ResourcesState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResourcesStateToJson(
      this,
    );
  }
}

abstract class _ResourcesState extends ResourcesState {
  const factory _ResourcesState(
      {@JsonKey(name: 'resources')
      final Map<String, ResourceModel> resources}) = _$_ResourcesState;
  const _ResourcesState._() : super._();

  factory _ResourcesState.fromJson(Map<String, dynamic> json) =
      _$_ResourcesState.fromJson;

  @override
  @JsonKey(name: 'resources')
  Map<String, ResourceModel> get resources;
  @override
  @JsonKey(ignore: true)
  _$$_ResourcesStateCopyWith<_$_ResourcesState> get copyWith =>
      throw _privateConstructorUsedError;
}
