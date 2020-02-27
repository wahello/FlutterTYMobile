import 'dart:io' show Platform;

import 'package:flutter/services.dart' show MethodChannel;

import '../mylogger.dart';

class PlatformUtil {
  static const restartChannel = const MethodChannel('com.op.tymobile/restart');

  static restart() {
    if (Platform.isAndroid) {
      MyLogger.log(msg: 'restarting android app...', tag: 'PlatformUtil');
      restartChannel.invokeMethod('appRestart');
    }
  }
}
