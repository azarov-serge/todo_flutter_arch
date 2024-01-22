import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'package:todo/models/models.dart';

part 'task_hive_model.g.dart';

@HiveType(typeId: 3)
class TaskHiveModel extends HiveObject {
  @HiveField(0)
  late final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  late final DateTime createdAt;
  @HiveField(3)
  late final String userId;

  TaskHiveModel({
    required this.name,
    required this.userId,
    id,
    createdAt,
  }) {
    this.id = id ?? UniqueKey().toString();
    this.createdAt = createdAt ?? DateTime.now();
  }

  TaskModel toModel() => TaskModel(
        id: id,
        name: name,
        createdAt: createdAt,
      );
}
