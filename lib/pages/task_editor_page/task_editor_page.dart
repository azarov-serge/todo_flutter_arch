import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/task_editor_page_bloc.dart';
import 'bloc/task_editor_page_state.dart';

class TaskEditorPage extends StatefulWidget {
  const TaskEditorPage({super.key});

  @override
  State<TaskEditorPage> createState() => _TaskEditorPageState();
}

class _TaskEditorPageState extends State<TaskEditorPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<TaskEditorPageBloc, TaskEditorPageState>(
      listener: (ctx, state) {
        final error = state.error;

        if (error.isNotEmpty) {
          _showAlert(
            context,
            message: error,
            onPressed: (context) {
              ctx
                  .read<TaskEditorPageBloc>()
                  .add(const TaskEditorPageEvent.clearError());
              Navigator.of(context).pop();
            },
          );
        }
      },
      child: BlocBuilder<TaskEditorPageBloc, TaskEditorPageState>(
        builder: (ctx, state) {
          final task = state.task;

          if (task == null) {
            return const Scaffold(body: SizedBox.shrink());
          }

          final taskEditorPageBloc = context.read<TaskEditorPageBloc>();

          return Scaffold(
            appBar: AppBar(
              title: Text(task.id.isEmpty ? 'Create task' : 'Edit task'),
            ),
            body: SafeArea(
              child: Center(
                child: state.loading
                    ? const CircularProgressIndicator()
                    : SingleChildScrollView(
                        padding: const EdgeInsets.all(15),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              TextFormField(
                                initialValue: task.name,
                                onChanged: (text) {
                                  taskEditorPageBloc.add(
                                    TaskEditorPageEvent.updateTask(
                                      task.copyWith(name: text),
                                    ),
                                  );
                                },
                                decoration: const InputDecoration(
                                  filled: true,
                                  hintText: 'Name',
                                ),
                              ),
                              const SizedBox(height: 20),
                              ElevatedButton(
                                onPressed: state.loading
                                    ? null
                                    : () {
                                        taskEditorPageBloc.add(
                                          TaskEditorPageEvent.submit(task),
                                        );
                                      },
                                child:
                                    Text(task.id.isEmpty ? 'Create' : 'Update'),
                              ),
                            ],
                          ),
                        ),
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
