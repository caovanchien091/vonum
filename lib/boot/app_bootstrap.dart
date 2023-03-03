import 'package:common/bootstrap/bootstrap.dart';
import 'package:common/environment/env_data.dart';
import 'package:common/register/dependency_register.dart';
import 'package:common/register/route_register.dart';
import 'package:vonum/env/env.dart';
import 'package:vonum/register/app_dependency.dart';
import 'package:vonum/register/app_route.dart';

class AppBootstrap extends Bootstrap {
  @override
  EnvData envData = EnvDev();

  @override
  List<DependencyRegister> dependencies = [
    AppDependency(),
  ];

  @override
  List<RouteRegister> routes = [
    AppRoute(),
  ];
}
