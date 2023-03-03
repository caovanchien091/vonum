import 'package:common/common.dart';
import 'package:flutter/material.dart';

abstract class RouteRegister {
  Route? generate(RouteSettings settings, Injection injection);
}
