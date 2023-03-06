import 'package:main/main.dart';
import 'package:source/source.dart';

class AppSettingDelegateImp extends AppSettingDelegate {
  final AppBloc _appBloc;
  final AuthRepository _authRepo;
  final CacheRepository _cacheRepo;

  AppSettingDelegateImp(
    this._appBloc,
    this._cacheRepo,
    this._authRepo,
  );

  void _refreshApp() {
    _appBloc.add(AppUpdateEvent());
  }

  @override
  Future<void> updateLang(String langCode) async {
    await _cacheRepo.writeLang(langCode).then(
          (value) => _refreshApp(),
        );
  }

  @override
  Future<void> updateTheme(String themeName) async {
    await _cacheRepo.writeTheme(themeName).then(
          (value) => _refreshApp(),
        );
  }

  @override
  Future<void> updateCurrency(String currency) async {
    await _cacheRepo.writeCurrency(currency).then(
          (value) => _refreshApp(),
        );
  }

  @override
  Future<void> updateTimeFormat(String timeFormat) async {
    await _cacheRepo.writeTimeFormat(timeFormat).then(
          (value) => _refreshApp(),
        );
  }

  @override
  Future<void> signOut() async {
    //
  }
}
