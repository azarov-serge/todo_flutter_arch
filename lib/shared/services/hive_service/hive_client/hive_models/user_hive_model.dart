import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:todo/models/models.dart';

part 'user_hive_model.g.dart';

@HiveType(typeId: 1)
class UserHiveModel extends HiveObject {
  @HiveField(0)
  late final String id;
  @HiveField(1)
  final String login;
  @HiveField(2)
  final String password;
  @HiveField(3)
  late final DateTime createdAt;

  UserHiveModel({
    required this.login,
    required this.password,
    id,
    createdAt,
  }) {
    this.id = id ?? UniqueKey().toString();
    this.createdAt = createdAt ?? DateTime.now();
  }

  UserModel toModel() => UserModel(id: id, login: login, createdAt: createdAt);
}
