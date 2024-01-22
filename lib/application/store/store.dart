import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import 'app_reducer.dart';
import 'app_state.dart';

Store<AppState> store() {
  final store = Store<AppState>(
    appReducer,
    initialState: const AppState(),
    middleware: [
      thunkMiddleware,
    ],
  );

  return store;
}
