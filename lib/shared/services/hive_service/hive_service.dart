import '../core/fetch_service.dart';
import '../models/models.dart';

import '../abstract_services/auth_service.dart';
import '../abstract_services/user_service.dart';
import '../abstract_services/task_service.dart';

import 'auth_service_impl.dart';
import 'user_service_impl.dart';
import 'task_service_impl.dart';

class HiveService implements FetchService {
  final AuthService _authService = AuthServiceImpl();
  final UserService _userService = UserServiceImpl();
  final TaskService _taskService = TaskServiceImpl();

  @override
  Future<dynamic> request(RequestModel args) async {
    // В качестве URL используем имя сервиса и метод сервиса (auth/signIn)
    final boxData = args.url.split('/');
    final boxMethod = boxData.length > 1 ? boxData[1] : '';

    switch (boxData[0]) {
      case 'auth':
        return await _authRequest(boxMethod, args: args);

      case 'user':
        return await _userRequest(boxMethod, args: args);

      case 'task':
        return await _taskRequest(boxMethod, args: args);

      default:
        throw Exception('Unknown request ${args.url}');
    }
  }

  Future<dynamic> _authRequest(
    String authMethod, {
    required RequestModel args,
  }) async {
    final data = args.data;

    switch (authMethod) {
      case 'signIn':
        return await _authService.signIn(
          login: data.login,
          password: data.password,
        );

      case 'signUp':
        return await _authService.signUp(
          login: data.login,
          password: data.password,
        );

      case 'signOut':
        return await _authService.signOut(data);

      case 'check':
        return await _authService.checkAuth();

      default:
        throw Exception('Unknown request ${args.url}');
    }
  }

  Future<dynamic> _userRequest(
    String userMethod, {
    required RequestModel args,
  }) async {
    final data = args.data;

    switch (userMethod) {
      case 'fetchUser':
        return await _userService.fetchUser(data);

      default:
        throw Exception('Unknown request ${args.url}');
    }
  }

  Future<dynamic> _taskRequest(
    String userMethod, {
    required RequestModel args,
  }) async {
    final data = args.data;

    if (userMethod == 'fetchList') {
      return await _taskService.fetchList(data);
    }

    switch (args.method) {
      case 'POST':
        final task = data['task'];
        final userId = data['userId'];
        return await _taskService.create(task, userId);
      case 'PATCH':
        return await _taskService.update(data);
      case 'DELETE':
        return await _taskService.update(data);

      default:
        throw Exception('Unknown request ${args.url}');
    }
  }
}
