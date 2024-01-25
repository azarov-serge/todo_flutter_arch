import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:todo/models/models.dart';

class TaskCard extends StatelessWidget {
  final TaskModel task;
  final Widget? leading;
  final Widget? trailing;

  const TaskCard({super.key, required this.task, this.leading, this.trailing});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
        child: Row(
          children: [
            leading ?? const SizedBox.shrink(),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(task.name),
                  Text(
                    DateFormat('dd.MM.yyyy HH:MM:ss').format(task.createdAt),
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            trailing ?? const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
