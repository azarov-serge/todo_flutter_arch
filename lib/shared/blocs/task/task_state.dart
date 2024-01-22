// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:todo/shared/services/services.dart';

part 'task_state.freezed.dart';

@freezed
class TaskState with _$TaskState {
  const factory TaskState({
    @Default(ResourceModel(name: '')) ResourceModel getListResource,
  }) = _TaskState;
}
