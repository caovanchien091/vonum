import 'package:common/common.dart';
import 'package:source/source.dart';

part 'app_event.dart';

part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> implements AppSettingCallback {
  AppBloc() : super(const AppInitState());

  @override
  void onChangeLanguage() {
    print('Changer Lang');
  }

  @override
  void onChangeTheme() {
    print('Changer theme');
  }
}
