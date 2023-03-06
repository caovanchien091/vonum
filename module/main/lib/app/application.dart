import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:main/main.dart';
import 'package:theme/theme.dart';
import 'package:widget/widget.dart';

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
  AppBloc get _appBloc => context.read();

  @override
  Widget build(BuildContext context) {
    return CustomBloc(
      bloc: _appBloc,
      listener: _listener,
      selectors: const [
        AppUpdateState,
      ],
      builder: (context, state) {
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
      },
    );
  }

  void _listener(AppState previous, AppState current) {
    if(current is AppNavigatorState) {

    }
  }
}
