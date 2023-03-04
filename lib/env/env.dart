import 'package:common/common.dart';

part 'env_dev.dart';

part 'env_live.dart';

abstract class _Env extends EnvData {
  @override
  String get defaultCurrency => 'vnd';

  @override
  String get defaultLang => 'vi';

  @override
  String get defaultTheme => 'Light';

  @override
  String get defaultTimeFormat => 'dd/MM/yyyy';
}
