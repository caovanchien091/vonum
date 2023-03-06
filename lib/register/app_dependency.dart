import 'package:common/common.dart';
import 'package:source/source.dart';
import 'package:vonum/delegate/route_delegate.dart';

class AppDependency extends DependencyRegister {
  @override
  Future<void> register(Injection injection) async {
    await _appRegister(injection);
    await _dependencyRegister(injection);
  }

  Future<void> _appRegister(Injection injection) async {}

  Future<void> _dependencyRegister(Injection injection) async {
    injection.factory<RouteDelegate>(
      () => RouteDelegateImp(),
    );
  }
}
