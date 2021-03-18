import 'dart:async';

import 'package:flutter/services.dart';

class MoveBg {
  static const MethodChannel _channel = const MethodChannel('chavesgu/move_bg');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<void> run() async {
    await _channel.invokeMethod('moveTaskToBack');
  }
}
