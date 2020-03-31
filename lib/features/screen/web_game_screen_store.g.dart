// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_game_screen_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$WebGameScreenStore on _WebGameScreenStore, Store {
  final _$_streamRotateAtom = Atom(name: '_WebGameScreenStore._streamRotate');

  @override
  ObservableStream<DeviceOrientation> get _streamRotate {
    _$_streamRotateAtom.context.enforceReadPolicy(_$_streamRotateAtom);
    _$_streamRotateAtom.reportObserved();
    return super._streamRotate;
  }

  @override
  set _streamRotate(ObservableStream<DeviceOrientation> value) {
    _$_streamRotateAtom.context.conditionallyRunInAction(() {
      super._streamRotate = value;
      _$_streamRotateAtom.reportChanged();
    }, _$_streamRotateAtom, name: '${_$_streamRotateAtom.name}_set');
  }

  final _$deviceOrientationAtom =
      Atom(name: '_WebGameScreenStore.deviceOrientation');

  @override
  DeviceOrientation get deviceOrientation {
    _$deviceOrientationAtom.context.enforceReadPolicy(_$deviceOrientationAtom);
    _$deviceOrientationAtom.reportObserved();
    return super.deviceOrientation;
  }

  @override
  set deviceOrientation(DeviceOrientation value) {
    _$deviceOrientationAtom.context.conditionallyRunInAction(() {
      super.deviceOrientation = value;
      _$deviceOrientationAtom.reportChanged();
    }, _$deviceOrientationAtom, name: '${_$deviceOrientationAtom.name}_set');
  }

  final _$rotateScreenAsyncAction = AsyncAction('rotateScreen');

  @override
  Future<void> rotateScreen(DeviceOrientation receivedRotate) {
    return _$rotateScreenAsyncAction
        .run(() => super.rotateScreen(receivedRotate));
  }

  final _$rotateScreenByIdAsyncAction = AsyncAction('rotateScreenById');

  @override
  Future<void> rotateScreenById(int receivedId) {
    return _$rotateScreenByIdAsyncAction
        .run(() => super.rotateScreenById(receivedId));
  }

  final _$initSensorStreamAsyncAction = AsyncAction('initSensorStream');

  @override
  Future<void> initSensorStream() {
    return _$initSensorStreamAsyncAction.run(() => super.initSensorStream());
  }

  final _$stopSensorAsyncAction = AsyncAction('stopSensor');

  @override
  Future<void> stopSensor() {
    return _$stopSensorAsyncAction.run(() => super.stopSensor());
  }

  @override
  String toString() {
    final string = 'deviceOrientation: ${deviceOrientation.toString()}';
    return '{$string}';
  }
}
