part of '../application.dart';

mixin AppSettingMixin on _AppBlocBase implements AppSettingUsecase {
  @override
  Future<void> updateLang(String langCode) {
    throw UnimplementedError();
  }

  @override
  Future<void> updateTheme(String themeName) {
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    throw UnimplementedError();
  }
}
