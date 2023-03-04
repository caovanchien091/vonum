abstract class AppSettingUsecase {
  Future<void> updateLang(String langCode);

  Future<void> updateTheme(String themeName);

  Future<void> signOut();
}
