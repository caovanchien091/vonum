import 'package:common/common.dart';
import 'package:main/main.dart';
import 'package:main/main_private.dart';
import 'package:source/source.dart';

class MainDependency extends DependencyRegister {
  @override
  Future<void> register(Injection injection) async {
    await _mainRegister(injection);
    await _dependencyRegister(injection);
  }

  Future<void> _mainRegister(Injection injection) async {
    injection.singleton<AppBloc>(
      () => AppBloc(
        injection.get(),
        injection.get(),
        injection.get(),
      ),
    );
  }

  Future<void> _dependencyRegister(Injection injection) async {
    injection.factory<AppSettingDelegate>(
      () => AppSettingDelegateImp(
        injection.get(),
        injection.get(),
        injection.get(),
      ),
    );
  }
}
