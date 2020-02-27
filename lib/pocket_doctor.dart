import 'dart:async';

import 'package:flutter/services.dart';

class PocketDoctor {
  static const MethodChannel _channel =
      const MethodChannel('pocket_doctor');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
