import 'dart:async' show StreamSubscription;
import 'dart:io' show Platform;

import 'package:flutter/services.dart' show EventChannel, MethodChannel;

import '../mylogger.dart';

class PlatformUtil {
  static const restartChannel = const MethodChannel('com.op.tymobile/restart');
  static const sensorChannel =
      const MethodChannel('com.op.tymobile/sensorswitch');
  static const sensorEventChannel =
      const EventChannel('com.op.tymobile/sensor');

  static StreamSubscription sensorSubscription;
  static Stream<int> sensorStream;

  static restart() {
    if (Platform.isAndroid) {
      MyLogger.log(msg: 'restarting android app...', tag: 'PlatformUtil');
      restartChannel.invokeMethod('appRestart');
    }
  }

  static enableSensor() {
    MyLogger.info(msg: 'enable sensor...', tag: 'PlatformUtil');
    sensorChannel.invokeMethod('enable');
  }

  static enableSensorListener() {
    MyLogger.info(msg: 'enable sensor stream...', tag: 'PlatformUtil');
    sensorChannel.invokeMethod('enable');
    Future.delayed(Duration(milliseconds: 500), () {
      sensorStream = sensorEventChannel.receiveBroadcastStream();
      sensorSubscription = sensorStream.listen((event) {
        print('sensor event: $event');
      }, onError: (dynamic error) {
        print('sensor error: ${error.message}');
      });
    });
  }

  static stopSensorListener() {
    MyLogger.info(msg: 'stop sensor stream...', tag: 'PlatformUtil');
    sensorSubscription.cancel();
  }

  static disableSensor() {
    MyLogger.log(msg: 'disable sensor...', tag: 'PlatformUtil');
    sensorChannel.invokeMethod('disable');
  }
}
