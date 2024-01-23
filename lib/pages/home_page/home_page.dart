import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:todo/models/models.dart';
import 'package:todo/pages/splash_page/splash_page.dart';

import 'bloc/home_page_bloc.dart';
import 'bloc/home_page_state.dart';
import 'home_items.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentHomeItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomePageBloc, HomePageState>(
      listener: (ctx, state) {
        final error = state.error;

        if (error.isNotEmpty) {
          _showAlert(
            context,
            message: error,
            onPressed: (context) {
              ctx.read<HomePageBloc>().add(const HomePageEvent.clearError());
              Navigator.of(context).pop();
            },
          );
        }
      },
      child: BlocBuilder<HomePageBloc, HomePageState>(
        builder: (context, state) {
          final UserModel? user = state.user;
          final homePageBloc = context.read<HomePageBloc>();
          final loading = state.loading;

          if (loading) {
            return const SplashPage();
          }

          if (user == null) {
            return const Scaffold(
              body: Center(child: Text('Launching the application...')),
            );
          }

          final homeItem = homeItems[_currentHomeItemIndex];
          final addRoute = homeItem.addRoute;

          return Scaffold(
            appBar: AppBar(
              title: Text(homeItem.name),
            ),
            drawer: Drawer(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 120,
                      child: DrawerHeader(
                          child: Row(
                        children: [
                          const Icon(
                            Icons.person_pin,
                            size: 40,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            user.login.toUpperCase(),
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ],
                      )),
                    ),
                    ..._buildMenu(context),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            child: Row(
                              children: const [
                                Icon(Icons.logout_outlined),
                                SizedBox(width: 5),
                                Text('Sign out')
                              ],
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();

                              homePageBloc.add(const HomePageEvent.signOut());
                            },
                          ),
                          const SizedBox(height: 25),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
              child: homeItem.page,
            ),
            floatingActionButton: addRoute != null
                ? FloatingActionButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(addRoute);
                    },
                    child: const Icon(Icons.add),
                  )
                : null,
          );
        },
      ),
    );
  }

  List<Widget> _buildMenu(BuildContext context) {
    if (homeItems.length < 2) {
      return const [SizedBox.shrink()];
    }

    return List.generate(
      homeItems.length,
      (index) {
        final homeItem = homeItems[index];

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              child: Text(homeItem.name),
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  _currentHomeItemIndex = index;
                });
              },
            ),
            const Divider(),
          ],
        );
      },
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
