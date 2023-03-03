import 'package:common/common.dart';
import 'package:source/source.dart';
import 'package:vonum/app/bloc/app_bloc.dart';

class AppDependency extends DependencyRegister {
  @override
  Future<void> register(Injection injection) async {
    await _applicationRegister(injection);
    await _dependencyApplicationRegister(injection);
  }

  Future<void> _applicationRegister(Injection injection) async {
    injection.singleton<AppBloc>(AppBloc());
  }

  Future<void> _dependencyApplicationRegister(Injection injection) async {
    injection.factory<AppSettingCallback>(() => injection.get<AppBloc>());
  }
}
