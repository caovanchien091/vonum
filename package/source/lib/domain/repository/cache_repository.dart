abstract class CacheRepository {
  String readLang();

  String readTheme();

  String readCurrency();

  String readTimeFormat();

  bool readAppInstall();

  Future<bool> writeLang(String lang);

  Future<bool> writeTheme(String themeName);

  Future<bool> writeAppInstall(bool appInstall);

  Future<bool> writeCurrency(String currency);

  Future<bool> writeTimeFormat(String timeFormat);
}
