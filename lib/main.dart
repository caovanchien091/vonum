import 'package:flutter/material.dart';
import 'package:vonum/boot/app_bootstrap.dart';

void main() => AppBootstrap().boot(
      engine: runApp,
      initRoute: (env) {
        return 'Launch';
      },
    );
