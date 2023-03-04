import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:source/source.dart';
import 'package:theme/theme.dart';

part 'bloc/app_bloc.dart';

part 'bloc/app_event.dart';

part 'bloc/app_state.dart';

part 'mixin/app_setting_mixin.dart';

part 'mixin/app_navigator_mixin.dart';

class Application extends StatefulWidget {
  final String initRoute;
  final GenerateRoute onGenerateRoute;

  const Application({
    Key? key,
    required this.initRoute,
    required this.onGenerateRoute,
  }) : super(key: key);

  @override
  State createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Route
      initialRoute: widget.initRoute,
      onGenerateRoute: widget.onGenerateRoute,
      // Theme
      theme: CustomTheme.light,
      darkTheme: CustomTheme.dark,
      themeMode: ThemeMode.light,
      // Debug
      showSemanticsDebugger: false,
    );
  }
}
