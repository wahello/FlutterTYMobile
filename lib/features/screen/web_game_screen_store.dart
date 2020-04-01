import 'dart:async' show StreamSubscription;
import 'dart:io' show Platform;

import 'package:flutter/services.dart' show DeviceOrientation;
import 'package:flutter_ty_mobile/core/internal/global.dart';
import 'package:flutter_ty_mobile/core/internal/orientation_helper.dart';
import 'package:flutter_ty_mobile/mylogger.dart';
import 'package:flutter_ty_mobile/utils/platform_util.dart';
import 'package:mobx/mobx.dart';
import 'package:webview_flutter/webview_flutter.dart' show WebViewController;

part 'web_game_screen_store.g.dart';

class WebGameScreenStore = _WebGameScreenStore with _$WebGameScreenStore;

enum WebGameScreenStoreState { initial, loading, loaded }

abstract class _WebGameScreenStore with Store {
  final String tag = 'WebGameScreenStore';

  @observable
  ObservableStream<DeviceOrientation> _streamRotate;

  @observable
  DeviceOrientation deviceOrientation = DeviceOrientation.portraitUp;

  StreamSubscription sensorSubscription;

  int sensorRotateId = 1;
  bool _sensorOn = false;
  bool lockAutoRotate = false;
  bool isAndroid = Platform.isAndroid;
  WebViewController _viewController;

  @action
  Future<void> rotateScreen(DeviceOrientation receivedRotate) async {
    try {
      if (receivedRotate != deviceOrientation) return;
      await OrientationHelper.forceOrientation(deviceOrientation);
      print('rotate complete: $deviceOrientation');
    } on Exception catch (e) {
      MyLogger.error(msg: 'rotate screen has exception', error: e, tag: tag);
    }
  }

  @action
  Future<void> rotateScreenById(int receivedId) async {
    try {
      if (receivedId != sensorRotateId) return;
      var target;
      switch (receivedId) {
        case 0:
          target = DeviceOrientation.landscapeRight;
          break;
        case 2:
          target = DeviceOrientation.landscapeLeft;
          break;
        case 3:
          target = DeviceOrientation.portraitDown;
          break;
        default:
          target = DeviceOrientation.portraitUp;
          break;
      }
      print('rotateScreenById, target: $target, current: $deviceOrientation');
      if (target != deviceOrientation) {
        deviceOrientation = target;
        await OrientationHelper.forceOrientation(target);
        print('rotate complete: $deviceOrientation');
      }
    } on Exception catch (e) {
      MyLogger.error(msg: 'rotate screen has exception', error: e, tag: tag);
    }
  }

  @action
  Future<void> initSensorStream() async {
    MyLogger.print(msg: 'initializing rotate listener...', tag: tag);
    if (isAndroid) {
      if (!_sensorOn) {
        PlatformUtil.enableSensor();
        _sensorOn = true;
      }
      if (sensorSubscription != null && sensorSubscription.isPaused) {
        sensorSubscription.resume();
      } else {
        await _bindSensorListener();
      }
    } else
      _bindRotateListener();
  }

  _bindSensorListener() async {
    return await Future.delayed(Duration(milliseconds: 500), () {
      try {
        sensorSubscription = PlatformUtil.sensorEventChannel
            .receiveBroadcastStream()
            .listen((rotateId) {
          print('sensor event: $rotateId');
          if (lockAutoRotate) return;
          if (sensorRotateId == rotateId) return;
          sensorRotateId = rotateId;
          Future.delayed(Duration(milliseconds: 500), () {
            rotateScreenById(rotateId);
          });
        }, onError: (dynamic error) {
          print('sensor error: ${error.message}');
        });
      } catch (e) {
        MyLogger.warn(msg: 'bind sensor failed: $e', tag: tag);
        _bindRotateListener();
      }
    });
  }

  _bindRotateListener() {
    if (_streamRotate != null) return;
    _streamRotate = ObservableStream(OrientationHelper.onOrientationChange);
    _streamRotate.listen((value) {
      if (lockAutoRotate || isAndroid) return;
      if (deviceOrientation == value) return;
      deviceOrientation = value;
      Future.delayed(Duration(seconds: 500), () {
        rotateScreen(value);
      });
      print('rotate detected: $deviceOrientation');
    });
  }

  bindController(WebViewController controller) {
    _viewController = controller;
  }

  _reset() {
    deviceOrientation = DeviceOrientation.portraitUp;
    sensorRotateId = 1;
    _sensorOn = false;
    lockAutoRotate = false;
  }

  @action
  Future<void> stopSensor() async {
    MyLogger.print(msg: 'stopping rotate listener...', tag: tag);
    if (sensorSubscription != null) sensorSubscription.cancel();
    if (isAndroid) {
      PlatformUtil.disableSensor();
      _sensorOn = false;
    }
    if (!isAndroid) _streamRotate = null;
    if (_viewController != null) {
      _viewController.loadUrl(Uri.dataFromString(
        '',
        mimeType: Global.WEB_MIMETYPE,
        encoding: Global.webEncoding,
      ).toString());
      await _viewController.clearCache();
      _viewController = null;
    }
    _reset();
  }
}
