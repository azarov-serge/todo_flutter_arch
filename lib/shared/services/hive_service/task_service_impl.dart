import 'package:todo/models/models.dart';
import 'package:todo/shared/di/di.dart';
import 'package:todo/shared/services/hive_service/hive_client/hive_client.dart';
import 'package:todo/shared/services/hive_service/hive_client/hive_models/task_hive_model.dart';

import '../abstract_services/task_service.dart';

class TaskServiceImpl implements TaskService {
  final HiveClient _hiveClient = getIt();
  @override
  Future<List<TaskModel>> fetchList(String userId) async {
    await Future.delayed(const Duration(milliseconds: 1900));

    final List<TaskModel> tasks = [];
    if (_hiveClient.tasksBox.length == 0) {
      return tasks;
    }

    final values = _hiveClient.tasksBox.values.toList();

    for (var value in values) {
      if (value.userId == userId) {
        tasks.add(value.toModel());
      }
    }

    if (tasks.isNotEmpty) {
      tasks.sort((a, b) {
        int aMicroseconds = a.createdAt.microsecondsSinceEpoch;
        int bMicroseconds = b.createdAt.microsecondsSinceEpoch;

        return aMicroseconds.compareTo(bMicroseconds);
      });
    }

    return tasks;
  }

  @override
  Future<TaskModel> create(TaskModel task, String userId) async {
    await Future.delayed(const Duration(milliseconds: 900));

    final newTask = TaskHiveModel(name: task.name, userId: userId);

    _hiveClient.tasksBox.put(newTask.id, newTask);

    return newTask.toModel();
  }

  @override
  Future<TaskModel> update(TaskModel task) async {
    await Future.delayed(const Duration(milliseconds: 900));

    final currentTask = _hiveClient.tasksBox.get(task.id);

    if (currentTask == null) {
      throw Exception('Task not found');
    }

    final updatedTask = TaskHiveModel(
      id: task.id,
      createdAt: task.createdAt,
      name: task.name,
      userId: currentTask.userId,
    );

    _hiveClient.tasksBox.put(updatedTask.id, updatedTask);

    return updatedTask.toModel();
  }

  @override
  Future<void> delete(String taskId) async {
    await Future.delayed(const Duration(milliseconds: 900));

    _hiveClient.tasksBox.delete(taskId);
  }
}
