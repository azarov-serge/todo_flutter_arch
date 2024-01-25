import 'package:redux/redux.dart';
import 'package:todo/application/store/app_state.dart';
import 'package:todo/shared/services/models/models.dart';

class ResourceParamsModel {
  late RequestModel _request;
  late RequestModel Function(dynamic event)? _requestUpdater;

  late Function(Store<AppState> store)? changeState;

  ResourceParamsModel({
    required request,
    this.changeState,
    RequestModel Function(dynamic event)? requestUpdater,
  }) {
    _request = request;
    _requestUpdater = requestUpdater;
  }

  RequestModel get request => _request;

  void updateRequest({
    required Store<AppState> store,
    dynamic event,
  }) {
    final updater = _requestUpdater;
    if (updater == null) {
      return;
    }

    _request = updater(event);
  }
}
