import 'package:todo/models/models.dart';

abstract class TaskService {
  Future<List<TaskModel>> fetchList(String userId);
  Future<TaskModel> create(TaskModel task, String userId);
  Future<TaskModel> update(TaskModel task);
  Future<void> delete(String taskId);
}
