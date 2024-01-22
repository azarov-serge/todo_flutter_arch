// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/models/models.dart';

part 'task_page_state.freezed.dart';

@freezed
class TaskPageState with _$TaskPageState {
  const factory TaskPageState({
    @Default(false) bool loading,
    @Default('') String error,
  }) = _TaskPageState;
}
