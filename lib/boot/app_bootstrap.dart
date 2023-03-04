import 'package:common/common.dart';
import 'package:main/main.dart';
import 'package:vonum/env/env.dart';
import 'package:vonum/register/app_dependency.dart';
import 'package:vonum/register/app_route.dart';

class AppBootstrap extends Bootstrap {
  @override
  EnvData envData = EnvDev();

  @override
  List<DependencyRegister> dependencies = [
    AppDependency(),
    MainDependency()
  ];

  @override
  List<RouteRegister> routes = [
    AppRoute(),
    MainRoute()
  ];
}
