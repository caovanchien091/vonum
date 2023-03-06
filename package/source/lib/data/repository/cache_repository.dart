import 'package:source/data/data.dart';
import 'package:source/domain/domain.dart';

class CacheRepositoryImp extends CacheRepository {
  final CacheService _service;

  CacheRepositoryImp(this._service);

  @override
  String readLang() {
    return _service.readLang();
  }

  @override
  String readTheme() {
    return _service.readTheme();
  }

  @override
  String readCurrency() {
    return _service.readCurrency();
  }

  @override
  String readTimeFormat() {
    return _service.readTimeFormat();
  }

  @override
  bool readAppInstall() {
    return _service.readAppInstall();
  }

  @override
  Future<bool> writeCurrency(String currency) {
    return _service.writeCurrency(currency);
  }

  @override
  Future<bool> writeTheme(String themeName) {
    return _service.writeTheme(themeName);
  }

  @override
  Future<bool> writeAppInstall(bool appInstall) {
    return _service.writeAppInstall(appInstall);
  }

  @override
  Future<bool> writeLang(String lang) {
    return _service.writeLang(lang);
  }

  @override
  Future<bool> writeTimeFormat(String timeFormat) {
    return _service.writeTimeFormat(timeFormat);
  }
}
