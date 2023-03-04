part of 'env.dart';

class EnvLive extends _Env {
  @override
  bool get isCheckNetwork => true;

  @override
  bool get isLogger => false;
}
