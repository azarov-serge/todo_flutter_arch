// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestModel _$RequestModelFromJson(Map<String, dynamic> json) {
  return _RequestModel.fromJson(json);
}

/// @nodoc
mixin _$RequestModel {
  /// method - GET, POST, PATCH, DELETE
  @JsonKey(name: 'method')
  String get method => throw _privateConstructorUsedError;

  /// url ресурса
  @JsonKey(name: 'url')
  String get url => throw _privateConstructorUsedError;

  /// query параметры (?query=params)
  @JsonKey(name: 'params')
  Map<String, String> get params => throw _privateConstructorUsedError;

  /// headers - заголовки
  @JsonKey(name: 'headers')
  Map<String, String> get headers => throw _privateConstructorUsedError;

  /// data - данные для запроса ({login: 'login', password: 'password'})
  @JsonKey(name: 'data')
  dynamic get data => throw _privateConstructorUsedError;

  /// id элемента, для создания уникального имени ресурса в случае update / delete
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestModelCopyWith<RequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestModelCopyWith<$Res> {
  factory $RequestModelCopyWith(
          RequestModel value, $Res Function(RequestModel) then) =
      _$RequestModelCopyWithImpl<$Res, RequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'method') String method,
      @JsonKey(name: 'url') String url,
      @JsonKey(name: 'params') Map<String, String> params,
      @JsonKey(name: 'headers') Map<String, String> headers,
      @JsonKey(name: 'data') dynamic data,
      @JsonKey(name: 'id') String id});
}

/// @nodoc
class _$RequestModelCopyWithImpl<$Res, $Val extends RequestModel>
    implements $RequestModelCopyWith<$Res> {
  _$RequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
    Object? url = null,
    Object? params = null,
    Object? headers = null,
    Object? data = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      headers: null == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RequestModelCopyWith<$Res>
    implements $RequestModelCopyWith<$Res> {
  factory _$$_RequestModelCopyWith(
          _$_RequestModel value, $Res Function(_$_RequestModel) then) =
      __$$_RequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'method') String method,
      @JsonKey(name: 'url') String url,
      @JsonKey(name: 'params') Map<String, String> params,
      @JsonKey(name: 'headers') Map<String, String> headers,
      @JsonKey(name: 'data') dynamic data,
      @JsonKey(name: 'id') String id});
}

/// @nodoc
class __$$_RequestModelCopyWithImpl<$Res>
    extends _$RequestModelCopyWithImpl<$Res, _$_RequestModel>
    implements _$$_RequestModelCopyWith<$Res> {
  __$$_RequestModelCopyWithImpl(
      _$_RequestModel _value, $Res Function(_$_RequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
    Object? url = null,
    Object? params = null,
    Object? headers = null,
    Object? data = null,
    Object? id = null,
  }) {
    return _then(_$_RequestModel(
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _value._params
          : params // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      headers: null == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestModel extends _RequestModel {
  const _$_RequestModel(
      {@JsonKey(name: 'method') this.method = 'GET',
      @JsonKey(name: 'url') required this.url,
      @JsonKey(name: 'params') final Map<String, String> params = const {},
      @JsonKey(name: 'headers') final Map<String, String> headers = const {},
      @JsonKey(name: 'data') this.data,
      @JsonKey(name: 'id') this.id = '0'})
      : _params = params,
        _headers = headers,
        super._();

  factory _$_RequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_RequestModelFromJson(json);

  /// method - GET, POST, PATCH, DELETE
  @override
  @JsonKey(name: 'method')
  final String method;

  /// url ресурса
  @override
  @JsonKey(name: 'url')
  final String url;

  /// query параметры (?query=params)
  final Map<String, String> _params;

  /// query параметры (?query=params)
  @override
  @JsonKey(name: 'params')
  Map<String, String> get params {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_params);
  }

  /// headers - заголовки
  final Map<String, String> _headers;

  /// headers - заголовки
  @override
  @JsonKey(name: 'headers')
  Map<String, String> get headers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_headers);
  }

  /// data - данные для запроса ({login: 'login', password: 'password'})
  @override
  @JsonKey(name: 'data')
  final dynamic data;

  /// id элемента, для создания уникального имени ресурса в случае update / delete
  @override
  @JsonKey(name: 'id')
  final String id;

  @override
  String toString() {
    return 'RequestModel(method: $method, url: $url, params: $params, headers: $headers, data: $data, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestModel &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._params, _params) &&
            const DeepCollectionEquality().equals(other._headers, _headers) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      method,
      url,
      const DeepCollectionEquality().hash(_params),
      const DeepCollectionEquality().hash(_headers),
      const DeepCollectionEquality().hash(data),
      id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestModelCopyWith<_$_RequestModel> get copyWith =>
      __$$_RequestModelCopyWithImpl<_$_RequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestModelToJson(
      this,
    );
  }
}

abstract class _RequestModel extends RequestModel {
  const factory _RequestModel(
      {@JsonKey(name: 'method') final String method,
      @JsonKey(name: 'url') required final String url,
      @JsonKey(name: 'params') final Map<String, String> params,
      @JsonKey(name: 'headers') final Map<String, String> headers,
      @JsonKey(name: 'data') final dynamic data,
      @JsonKey(name: 'id') final String id}) = _$_RequestModel;
  const _RequestModel._() : super._();

  factory _RequestModel.fromJson(Map<String, dynamic> json) =
      _$_RequestModel.fromJson;

  @override

  /// method - GET, POST, PATCH, DELETE
  @JsonKey(name: 'method')
  String get method;
  @override

  /// url ресурса
  @JsonKey(name: 'url')
  String get url;
  @override

  /// query параметры (?query=params)
  @JsonKey(name: 'params')
  Map<String, String> get params;
  @override

  /// headers - заголовки
  @JsonKey(name: 'headers')
  Map<String, String> get headers;
  @override

  /// data - данные для запроса ({login: 'login', password: 'password'})
  @JsonKey(name: 'data')
  dynamic get data;
  @override

  /// id элемента, для создания уникального имени ресурса в случае update / delete
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_RequestModelCopyWith<_$_RequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}
