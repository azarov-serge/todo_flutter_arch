import 'package:flutter/material.dart';

import 'package:todo/application/router/router.dart';
import 'package:todo/pages/pages.dart';

class HomeItem {
  HomeItem({
    required this.route,
    required this.name,
    required this.page,
    this.addRoute,
  });

  final String route;
  final String? addRoute;

  final String name;
  final Widget page;
}

/* icons
home: CupertinoIcons.home,
*/

final homeItems = [
  HomeItem(
    route: homeRoute,
    addRoute: taskEditorRoute,
    page: const TasksPage(),
    name: 'Tasks',
  ),
];
