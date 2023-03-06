import 'package:common/common.dart';
import 'package:flutter/services.dart';
import 'package:main/main.dart';
import 'package:source/source.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final CacheRepository _cacheRepo;
  final AuthRepository _authRepo;
  final RouteDelegate _route;


  AppBloc(this._cacheRepo, this._authRepo, this._route) : super(AppInitState()) {
    on<AppUpdateEvent>(_onUpdate);
    on<AppVerifyEvent>(_onVerify);
  }

  Future<void> _onUpdate(AppUpdateEvent event, Emitter emit) async {
    emit(AppUpdateState());
  }

  Future<void> _onVerify(AppVerifyEvent event, Emitter emit) async {
    await _authRepo.readSession().when(
      login: (entity) async {
        if (entity.isOpt == false) {
          emit(AppNavigatorState(
            route: _route.verifyOpt,
            arguments: null,
          ));
        } else {
          emit(AppNavigatorState(
            route: _route.home,
            arguments: null,
          ));
        }
      },
      nonLogin: (entity) async {
        await _authRepo.nonLogin().then((value) async {
          if (_cacheRepo.readAppInstall()) {
            emit(AppNavigatorState(
              route: _route.signIn,
              arguments: null,
            ));
          } else {
            await _cacheRepo.writeAppInstall(true);
            emit(AppNavigatorState(
              route: _route.boarding,
              arguments: null,
            ));
          }
        });
      },
    );
  }

}
