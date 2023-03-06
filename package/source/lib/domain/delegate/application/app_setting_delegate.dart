abstract class AppSettingDelegate {
  Future<void> updateLang(String langCode);

  Future<void> updateTheme(String themeName);

  Future<void> updateCurrency(String currency);

  Future<void> updateTimeFormat(String timeFormat);

  Future<void> signOut();
}
