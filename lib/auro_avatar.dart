import 'dart:async';

import 'package:flutter/services.dart';

export 'src/initialNameAvatar.dart';

class AuroAvatar {
  static const MethodChannel _channel = const MethodChannel('auro_avatar');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
