abstract class AppState {}

class AppInitState extends AppState {}

class AppUpdateState extends AppState {}

class AppNavigatorState extends AppState {
  final String? route;
  final dynamic arguments;

  AppNavigatorState({
    this.arguments,
    required this.route,
  });
}
