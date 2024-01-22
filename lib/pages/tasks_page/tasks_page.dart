import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/application/router/router.dart';

import 'package:todo/shared/ui_kit/ui_kit.dart';

import 'bloc/task_page_bloc.dart';
import 'bloc/task_page_state.dart';

import 'bloc/tasks_page_bloc.dart';
import 'bloc/tasks_page_state.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<TasksPageBloc, TasksPageState>(
      listener: (ctx, state) {
        final error = state.error;

        if (error.isNotEmpty) {
          _showAlert(
            context,
            message: error,
            onPressed: (context) {
              ctx.read<TasksPageBloc>().add(const TasksPageEvent.clearError());
              Navigator.of(context).pop();
            },
          );
        }
      },
      child: BlocBuilder<TasksPageBloc, TasksPageState>(
        builder: (ctx, state) {
          if (state.loading) {
            return const SafeArea(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }

          if (state.tasks.isEmpty) {
            return const SafeArea(
              child: Center(child: Text('No tasks')),
            );
          }

          return SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  state.tasks.length,
                  (index) {
                    final task = state.tasks[index];

                    // return BlocProvider(
                    //   create: (BuildContext ctx) => TaskPageBloc.create(),
                    //   child: BlocBuilder<TaskPageBloc, TaskPageState>(
                    //       builder: (builder, state) {
                    //     final taskPageBloc = ctx.read<TaskPageBloc>();

                    return TaskCard(
                      leading: SizedBox(
                        width: 50,
                        child: TextButton(
                          child: const Icon(Icons.edit),
                          onPressed: () {
                            Navigator.of(context).pushNamed(
                              taskEditorRoute,
                              arguments: {'id': task.id},
                            );
                          },
                        ),
                      ),
                      // trailing: SizedBox(
                      //   width: 50,
                      //   child: TextButton(
                      //     child: const Icon(
                      //       Icons.delete,
                      //       color: Colors.red,
                      //     ),
                      //     onPressed: () {
                      //       taskPageBloc.add(
                      //         TaskPageEvent.deleteTask(task.id),
                      //       );
                      //     },
                      //   ),
                      // ),
                      task: task,
                    );
                  },
                  // ),
                  // );
                  // },
                ),
              ),
            ),
          );
        },
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
          ElevatedButton(
            onPressed: () => onPressed(ctx),
            child: const Text('Ok'),
          ),
        ],
      ),
    );
  }
}
