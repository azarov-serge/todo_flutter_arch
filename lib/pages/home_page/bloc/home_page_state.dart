// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/models/models.dart';

part 'home_page_state.freezed.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState({
    @Default(true) bool loading,
    @Default('') String error,
    UserModel? user,
  }) = _HomePageState;
}
