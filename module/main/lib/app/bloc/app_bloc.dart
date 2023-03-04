part of '../application.dart';

abstract class _AppBlocBase extends Bloc<AppEvent, AppState> {
  _AppBlocBase() : super(const AppInitState());
}

class AppBloc extends _AppBlocBase with AppSettingMixin, AppNavigatorMixin {
  AppBloc() {
    on((event, emit) => null);
  }
}
