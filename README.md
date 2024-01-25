# ToDo (архитектура для Flutter проектов)

- [Архитекрура](#arch)

  - [App](#app)

    - [Роутер (маршрутизация страниц)](#app-router)
    - [Store (хранилище приложения)](#store)

  - [Models](#models)
  - [Pages (страницы)](#pages)
  - [Widgets](#widgets)
  - [Shared](#shared)

## <a id="arch"></a>Архитекрура

Слои - это первый уровень организационной иерархии. Их цель - разделить код на основе того, сколько ответственности ему требуется и от скольких других модулей в приложении он зависит.

Каждый слой несет в себе особый семантический смысл, помогающий определить, какую ответственность следует возложить на модуль в вашем коде.

Дерево файловой системы с одной корневой папкой src и подпапками: app, pages, components, entities, shared.

- App (Приложение)
- Pages (Страницы)
- Widgets (Components / Компоненты)
- Models (Entities / Сущности / Домены)
- Shared (Общий)

### Основной файл

`/lib/main.dart` - инициация приложения + подключение store.

### <a id="app"></a>Application

`/lib/application/application.dart`
Cодержит:

#### <a id="app-router"></a>Роутер (маршрутизация страниц)

- `/lib/application/router.dart` - маршрутизация страниц

#### <a id="store"></a>Store (хранилище приложения)

Используется Redux (`/lib/application/store`).
Содержит хранилища:

- `/lib/application/store/resources/` - хранилище по работе с ресурсами (`/lib/application/store/resources/resources_state.dart`). Ресурс - класс который храни состояния / свойства сетевых запросов (`/lib/shared/services/models/resource_model.dart`).

```dart
@freezed
class ResourceModel with _$ResourceModel {
  const ResourceModel._();

  const factory ResourceModel({
    @JsonKey(name: 'id') required String id,

    /// true - идет запрос, false - запрос окончен
    @JsonKey(name: 'loading') @Default(false) bool loading,

    /// false - запрос не закончен, true - запрос окончен
    @JsonKey(name: 'loaded') @Default(false) bool loaded,
    @JsonKey(name: 'data') dynamic data,
    @JsonKey(name: 'error') @Default('') String error,
  }) = _ResourceModel;

  factory ResourceModel.fromJson(Map<String, dynamic> json) =>
      _$ResourceModelFromJson(json);

  createEmpty() => ResourceModel(id: name);
}
```

- `/lib/application/store/resources/thunks/`
  - `lib/application/store/resources/thunks/fetch_resource.dart` - получение ресурса на основе запроса `request`.

```dart
@freezed
class RequestModel with _$RequestModel {
  // Еще можно добавить адаптер, если это необходимо json --> model
  const RequestModel._();

  const factory RequestModel({
    /// method - GET, POST, PATCH, DELETE
    @JsonKey(name: 'method') @Default('GET') String method,

    /// url ресурса
    @JsonKey(name: 'url') required String url,

    /// query параметры (?query=params)
    @JsonKey(name: 'params') @Default({}) Map<String, String> params,

    /// headers - заголовки
    @JsonKey(name: 'headers') @Default({}) Map<String, String> headers,

    /// data - данные для запроса ({login: 'login', password: 'password'})
    @JsonKey(name: 'data') dynamic data,

    /// id элемента, для создания уникального имени ресурса в случае update / delete
    @JsonKey(name: 'id') @Default('0') String id,
  }) = _RequestModel;

  factory RequestModel.fromJson(Map<String, dynamic> json) =>
      _$RequestModelFromJson(json);

  get resourceId => '$method-$url-$id';

  static String createResourceId({
    required String url,
    String method = 'GET',
    String id = '',
  }) =>
      '$method-$url-$id';
}

```

- `/lib/application/store/resources/selectors/` - селекторы.

  - `/lib/application/store/resources/selectors/get_resource.dart` - получение ресурса (ResourceModel) на основе запроса (RequestModel).

- `/lib/application/store/resources/resources_action.dart` - экшены по работе с ресурсами:
  - updateResource - обновление ресурса в хранилище.
  - deleteResource - удаление ресурса из хранилища.

### <a id="models"></a>Models

Понятия из реального мира, которые вместе образуют суть проекта. Как правило, это термины, которые бизнес использует для описания продукта. Содержит интерфейсы:

- `UserModel`
- `TaskModel`

### <a id="pages"></a>Pages (Страницы)

Полноценные страницы для страничных приложений (например, веб-сайтов) или экраны/активности для экранных приложений (например, мобильных приложений).

- `/lib/pages/sign_in/` - авторизация.
- `/lib/pages/sign_up/` - регистрация.
- `/lib/pages/home_page/` - главная страница. Показывает TasksPage.
- `/lib/pages/tasks_page/` - страница с задачами. Список задач + функциональность: создать, редактировать, удалить задачу.
- `/lib/pages/task_editor_page/` - страница создания / редактирования задачи.
- `/lib/pages/splash_page/` - показывает экран загрузки.

### <a id="widgets"></a>Widgets

Самодостаточные блоки пользовательского интерфейса возникли из композиции единиц более низкого уровня, таких как сущности и функции.

Этот слой предоставляет возможность заполнить слоты, оставленные в интерфейсе сущностей, другими сущностями и интерактивными элементами из фич. Поэтому обычно на этом слое не размещается бизнес-логика, вместо этого она хранится в фичах. Каждый слайс на этом слое содержит готовые к использованию компоненты пользовательского интерфейса и иногда не-бизнес-логику, например, жесты, взаимодействие с клавиатурой и т.д.

Иногда удобнее разместить бизнес-логику на этом слое. Зачастую, это происходит тогда, когда виджет имеет довольно много интерактивности (например, интерактивные таблицы) и бизнес-логика в нём не переиспользуется.

`/lib/widgets/` - набор компонентов c логикой (могут состоять из простых компонентов).

**Например**, если TaskItem `/lib/pages/tasks_page/widget/task_item/task_item.dart` будет использован на нескольких страницах, то его можно перенести в `/lib/widgets/`

### <a id="shared"></a>Shared

Изолированные модули, компоненты и абстракции, отдельные от специфики проекта или бизнеса.
Содержит:

- `/lib/shared/ui_kit/` - набор простых компонентов.
- `/lib/shared/resource_bloc/` - BLoC по работе с ресурсами. При создании необходимо передать [параметры](#resource-bloc-params)

  - `/lib/shared/resource_bloc/utils/` - утилиты создания параметров.
    - `/lib/shared/resource_bloc/auth_utils.dart` - утилиты создания параметров авторизации.
    - `/lib/shared/resource_bloc/task_utils.dart` - утилиты создания параметров по работе с задачами.
    - `/lib/shared/resource_bloc/user_utils.dart` - утилиты создания параметров по работе с пользователем.

- `/lib/shared/utils/` - утилиты.
- `/lib/shared/di/` - DI проекта.

- `lib/shared/services` - сервисы:

  - `lib/shared/services/core/`

    - `lib/shared/services/core/fetch_service.dart` - абстрактный класс который иcпользуется при запросе ресурсов.

  - `lib/shared/services/abstract_services/` - абстрактный классы сервисов.
  - `/lib/shared/services/models/` - модели для серетевых запросов: запрос (RequestModel) и ресурс (ResourceModel).
  - `/lib/shared/services/requests.dart` - константы серевых запросов (RequestModel).

  - `/lib/shared/services/hive_service/` - имплиментация сервиса (Hive) с вспомогательными сераисами (auth, user, task). + Утилиты инициации сервиса и hiveClient.

<a id="resource-bloc-params"></a>ResourceParamsModel

```dart
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
```
