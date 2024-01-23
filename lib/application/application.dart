import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/shared/blocs/auth/check_auth/check_auth_bloc.dart';

import 'package:todo/shared/constants/global.dart';
import 'package:todo/shared/di/di.dart';

import 'bloc/application_bloc.dart';
import 'bloc/application_state.dart';
import 'router/router.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ApplicationBloc>(
          create: (BuildContext context) => ApplicationBloc.create(
            authBloc: CheckAuthBloc.create(),
          )..add(const ApplicationEvent.init()),
        ),
      ],
      child: BlocBuilder<ApplicationBloc, ApplicationState>(
        builder: (context, state) {
          SystemChrome.setPreferredOrientations([
            DeviceOrientation.portraitUp,
            DeviceOrientation.portraitDown,
          ]);
          return MaterialApp(
            title: 'To Do',
            navigatorKey: navigatorKey,
            darkTheme: ThemeData.dark().copyWith(
              colorScheme: ThemeData.dark()
                  .colorScheme
                  .copyWith(secondary: Colors.orange, primary: Colors.orange),
            ),
            themeMode: ThemeMode.system,
            initialRoute: homeRoute,
            onGenerateRoute: AppRouter.generateRoute,
          );
        },
      ),
    );
  }
}
