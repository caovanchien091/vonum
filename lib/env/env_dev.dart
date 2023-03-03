part of 'env.dart';

class EnvDev extends _Env {
  @override
  bool get isCheckNetwork => true;

  @override
  bool get isLogger => true;
}
