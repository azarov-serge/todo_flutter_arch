// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'resource_model.freezed.dart';
part 'resource_model.g.dart';

@freezed
class ResourceModel with _$ResourceModel {
  const ResourceModel._();

  const factory ResourceModel({
    @JsonKey(name: 'name') required String name,

    /// true - идет запрос, false - запрос окончен
    @JsonKey(name: 'loading') @Default(false) bool loading,

    /// false - запрос не закончен, true - запрос окончен
    @JsonKey(name: 'loaded') @Default(false) bool loaded,
    @JsonKey(name: 'data') dynamic data,
    @JsonKey(name: 'error') @Default('') String error,
  }) = _ResourceModel;

  factory ResourceModel.fromJson(Map<String, dynamic> json) =>
      _$ResourceModelFromJson(json);

  createEmpty() => ResourceModel(name: name);
}
