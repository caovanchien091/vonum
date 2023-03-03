import 'package:common/common.dart';

class Env {
  final Cache _cache;
  final EnvData _envData;

  const Env(this._cache, this._envData);

  bool get isLogger => _envData.isLogger;

  bool get isCheckNetwork => _envData.isCheckNetwork;

  String get lang {
    return _cache.readString(langKey) ?? _envData.defaultLang;
  }

  String get theme {
    return _cache.readString(themeKey) ?? _envData.defaultLang;
  }

  String get currency {
    return _cache.readString(currencyKey) ?? _envData.defaultLang;
  }

  String get timeFormat {
    return _cache.readString(timeFormatKey) ?? _envData.defaultLang;
  }
}
