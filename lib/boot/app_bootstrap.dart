import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:main/main.dart';
import 'package:widget/widget.dart';
import 'package:vonum/env/env.dart';
import 'package:vonum/register/app_dependency.dart';
import 'package:vonum/register/app_route.dart';

class AppBootstrap extends Bootstrap {
  @override
  EnvData envData = EnvDev();

  @override
  late List<DependencyRegister> dependencies = [
    AppDependency(),
    MainDependency(),
  ];

  @override
  late List<RouteRegister> routes = [
    AppRoute(),
    MainRoute(),
  ];

  @override
  late List<BlocProvider> providers = [
    BlocProvider<AppBloc>(create: (context) => injection.get()),
  ];

  @override
  Widget onComplete(onGenerate) {
    return MultiBlocProvider(
      providers: providers,
      child: Application(
        initRoute: '/Launch',
        onGenerateRoute: onGenerate,
      ),
    );
  }
}
