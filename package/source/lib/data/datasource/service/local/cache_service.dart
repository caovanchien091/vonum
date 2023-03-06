import 'package:common/common.dart';

class CacheService {
  final Env _env;
  final Cache _cache;

  CacheService(this._cache, this._env);

  String readLang() {
    return _cache.readString(langKey) ?? _env.lang;
  }

  String readTheme() {
    return _cache.readString(langKey) ?? _env.lang;
  }

  String readCurrency() {
    return _cache.readString(langKey) ?? _env.lang;
  }

  String readTimeFormat() {
    return _cache.readString(langKey) ?? _env.lang;
  }

  bool readAppInstall() {
    return _cache.readBool(appInstallKey);
  }

  Future<bool> writeLang(String lang) {
    return _cache.write(langKey, lang);
  }

  Future<bool> writeTheme(String themeName) {
    return _cache.write(themeKey, themeName);
  }

  Future<bool> writeAppInstall(bool appInstall) {
    return _cache.write(appInstallKey, appInstall);
  }

  Future<bool> writeCurrency(String currency) {
    return _cache.write(currencyKey, currency);
  }

  Future<bool> writeTimeFormat(String timeFormat) {
    return _cache.write(timeFormatKey, timeFormat);
  }
}
