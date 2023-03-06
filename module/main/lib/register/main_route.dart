import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:main/main.dart';
import 'package:widget/route/custom_page_route.dart';

class MainRoute extends RouteRegister {
  static const String launch = '/Launch';

  @override
  Route? generate(RouteSettings settings, Injection injection) {
    switch (settings.name) {
      case launch:
        return CustomPageRoute(
          settings: settings,
          child: const LaunchScreen(),
        );
    }
  }
}
