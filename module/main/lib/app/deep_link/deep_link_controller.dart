import 'package:flutter/services.dart';
import 'package:main/app/bloc/app_bloc.dart';
import 'package:main/app/deep_link/deep_link_data.dart';

class DeepLinkController {
  final AppBloc _appBloc;

  final event = const EventChannel('vunom.caovanchien.com/event');
  final channel = const MethodChannel('vunom.caovanchien.com/channel');

  DeepLinkController(this._appBloc) {
    _startApplication().then(
      (uri) => _onRedirected(uri, true),
    );
    _broadcast().listen(
      (uri) => _onRedirected(uri, false),
    );
  }

  Stream _broadcast() {
    return event.receiveBroadcastStream();
  }

  void _onRedirected(String? uri, bool isStart) {
    if (uri is String) {
      var data = DeepLinkData(uri, isStart);
      //
    }
  }

  Future<String?> _startApplication() async {
    try {
      return channel.invokeMethod('initialLink');
    } on PlatformException catch (e) {
      return "Failed to Invoke: '${e.message}'.";
    }
  }
}
