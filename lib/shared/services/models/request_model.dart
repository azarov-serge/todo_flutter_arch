// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_model.freezed.dart';
part 'request_model.g.dart';

@freezed
class RequestModel with _$RequestModel {
  // Еще можно добавить адаптер, если это необходимо json --> model
  const RequestModel._();

  const factory RequestModel({
    /// method - GET, POST, PATCH, DELETE
    @JsonKey(name: 'method') @Default('GET') String method,

    /// url ресурса
    @JsonKey(name: 'url') required String url,

    /// query параметры (?query=params)
    @JsonKey(name: 'params') @Default({}) Map<String, String> params,

    /// headers - заголовки
    @JsonKey(name: 'headers') @Default({}) Map<String, String> headers,

    /// data - данные для запроса ({login: 'login', password: 'password'})
    @JsonKey(name: 'data') dynamic data,

    /// id элемента, для создания уникального имени ресурса в случае update / delete
    @JsonKey(name: 'id') @Default('0') String id,
  }) = _RequestModel;

  factory RequestModel.fromJson(Map<String, dynamic> json) =>
      _$RequestModelFromJson(json);

  get resourceId => '$method-$url-$id';

  static String createResourceId({
    required String url,
    String method = 'GET',
    String id = '',
  }) =>
      '$method-$url-$id';
}
