import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:todo/application/router/router.dart';
import 'package:todo/models/models.dart';
import 'package:todo/shared/blocs/task/task.dart';

import 'package:todo/shared/ui_kit/ui_kit.dart';

class TaskItem extends StatelessWidget {
  final TaskModel task;
  const TaskItem({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TaskDeleteBloc>(
      create: (_) => TaskDeleteBloc.create(),
      child: BlocListener<TaskDeleteBloc, TaskDeleteState>(
        listener: (ctx, state) {
          final error = state.error;

          if (error.isNotEmpty) {
            _showAlert(
              context,
              message: error,
              onPressed: (context) {
                ctx
                    .read<TaskDeleteBloc>()
                    .add(const TaskDeleteEvent.clearError());
                Navigator.of(context).pop();
              },
            );
          }
        },
        child: BlocBuilder<TaskDeleteBloc, TaskDeleteState>(
          builder: (ctx, state) {
            final taskDeleteBloc = ctx.read<TaskDeleteBloc>();

            return TaskCard(
              leading: SizedBox(
                width: 50,
                child: TextButton(
                  onPressed: state.loading
                      ? null
                      : () {
                          Navigator.of(context).pushNamed(
                            taskEditorRoute,
                            arguments: {'id': task.id},
                          );
                        },
                  child: const Icon(Icons.edit),
                ),
              ),
              trailing: state.loading
                  ? const Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: SizedBox(
                        width: 30,
                        height: 30,
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : SizedBox(
                      width: 50,
                      height: 50,
                      child: TextButton(
                        child: const Icon(Icons.delete, color: Colors.red),
                        onPressed: () {
                          taskDeleteBloc.add(TaskDeleteEvent.delete(task.id));
                        },
                      ),
                    ),
              task: task,
            );
          },
        ),
      ),
    );
  }

  _showAlert(
    BuildContext context, {
    required String message,
    required Function onPressed,
  }) {
    return showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        content: Text(message),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () => onPressed(ctx),
                child: const Text('Ok'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
