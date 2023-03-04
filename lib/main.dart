import 'package:flutter/material.dart';
import 'package:main/app/application.dart';
import 'package:vonum/boot/app_bootstrap.dart';

void main() => AppBootstrap().boot(
      initRoute: (injection) {
        return 'Launch';
      },
      complete: (initRoute, onGenerate) {
        runApp(
          Application(
            initRoute: initRoute,
            onGenerateRoute: onGenerate,
          ),
        );
      },
    );
