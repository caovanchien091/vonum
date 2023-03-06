import 'package:common/common.dart';
import 'package:flutter/material.dart';

abstract class Bootstrap {
  abstract EnvData envData;
  abstract List<RouteRegister> routes;
  abstract List<DependencyRegister> dependencies;
  abstract List<BlocProvider> providers;

  Widget onComplete(GenerateRoute onGenerate);

  Injection get injection => Injection.I;

  void boot({
    required AppEngine engine,
    required InitRoute initRoute,
  }) async {
    await _register();

    for (var dependency in dependencies) {
      await dependency.register(
        injection,
      );
    }

    generateRoute(settings) {
      for (var route in routes) {
        var routePage = route.generate(
          settings,
          injection,
        );

        if (routePage != null) {
          return routePage;
        }
      }
    }

    engine(
      onComplete(
        generateRoute,
      ),
    );
  }

  Future _register() async {
    // Init Hive cache local
    await Hive.initFlutter().then(
      (value) => Hive.openBox(cacheName).then(
        (value) => injection.factory<Cache>(
          () => DefaultCache(),
        ),
      ),
    );

    // Init Env data
    injection.singleton(
      () => Env(
        injection.get<Cache>(),
        envData,
      ),
    );
  }
}
