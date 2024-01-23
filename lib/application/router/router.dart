import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:todo/pages/pages.dart';
import 'package:todo/pages/home_page/bloc/home_page_bloc.dart';
import 'package:todo/pages/sign_in_page/bloc/sign_in_page_bloc.dart';
import 'package:todo/pages/sign_up_page/bloc/sign_up_page_bloc.dart';
import 'package:todo/pages/tasks_page/bloc/tasks_page_bloc.dart';
import 'package:todo/pages/task_editor_page/bloc/task_editor_page_bloc.dart';

import 'package:todo/shared/blocs/auth/auth.dart';
import 'package:todo/shared/blocs/task/task.dart';

const String homeRoute = '/';

const String tasksRoute = '/tasks';
const String taskEditorRoute = '/task-editor';

const String categoriesRoute = '/categories';
const String categoryEditorRoute = '/category-editor';

const String signInRoute = '/sign-in';
const String signUpRoute = '/sign-up';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final route = settings.name ?? '';
    final Map<String, dynamic> arguments = settings.arguments == null
        ? {}
        : settings.arguments as Map<String, dynamic>;

    switch (route) {
      case homeRoute:
      case tasksRoute:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (BuildContext context) => HomePageBloc.create(),
              ),
              BlocProvider(
                create: (BuildContext context) => TasksPageBloc.create(),
              ),
            ],
            child: const HomePage(),
          ),
        );

      case taskEditorRoute:
        final String id = arguments['id'] ?? '';

        return MaterialPageRoute(
          builder: (_) => BlocProvider<TaskEditorPageBloc>(
            create: (BuildContext context) => TaskEditorPageBloc.create(
              taskCreateBloc: TaskCreateBloc.create(),
              taskUpdateBloc: TaskUpdateBloc.create(),
            )..add(
                TaskEditorPageEvent.init(id),
              ),
            child: const TaskEditorPage(),
          ),
        );

      case signInRoute:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<SignInPageBloc>(
            create: (BuildContext context) => SignInPageBloc.create(
              signInBloc: SignInBloc.create(),
            ),
            child: const SignInPage(),
          ),
        );

      case signUpRoute:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<SignUpPageBloc>(
            create: (BuildContext context) => SignUpPageBloc.create(
              signUpBloc: SignUpBloc.create(),
            ),
            child: const SignUpPage(),
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
    }
  }
}
