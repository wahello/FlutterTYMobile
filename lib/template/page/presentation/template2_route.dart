import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ty_mobile/core/internal/orientation_helper.dart';
import 'package:flutter_ty_mobile/features/home/presentation/widgets/home_widgets_export.dart';
import 'package:flutter_ty_mobile/template/page/presentation/bloc/template2_bloc.dart';
import 'package:flutter_ty_mobile/template/page/presentation/bloc/template2_event.dart';
import 'package:flutter_ty_mobile/template/page/presentation/widgets/template2_control.dart';
import 'package:flutter_ty_mobile/template/page/presentation/widgets/template2_display.dart';
import 'package:flutter_ty_mobile/utils/platform_util.dart';

import '../../../injection_container.dart';
import 'bloc/template2_state.dart';

class Template2Route extends StatefulWidget {
  @override
  _Template2RouteState createState() => _Template2RouteState();
}

class _Template2RouteState extends State<Template2Route> {
  Template2Bloc _bloc;

  DeviceOrientation _deviceOrientation;
  StreamSubscription<DeviceOrientation> subscription;
  bool _lockAutoRotate = true;
  bool _sensorOn = false;
  int _rotateIndex;

  @override
  void initState() {
    subscription = OrientationHelper.onOrientationChange.listen((value) {
      // If the widget was removed from the tree while the asynchronous platform
      // message was in flight, we want to discard the reply rather than calling
      // setState to update our non-existent appearance.
      if (!mounted) return;
      setState(() {
        if (!_lockAutoRotate) {
          _deviceOrientation = value;
          _rotateIndex = value.index;
          print('auto rotate index: $_rotateIndex');
          OrientationHelper.forceOrientation(value);
        }
      });
    });
    _bloc = sl<Template2Bloc>();
    super.initState();
  }

  @override
  void dispose() {
    subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _deviceOrientation ??=
        (MediaQuery.of(context).orientation == Orientation.portrait)
            ? DeviceOrientation.portraitUp
            : DeviceOrientation.landscapeLeft;
    _rotateIndex ??= _deviceOrientation.index;
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text('Orientation: '),
              Text(_deviceOrientation.toString()),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  _rotateIndex = _rotateIndex + 1;
                  if (_rotateIndex > 3) _rotateIndex = 0;
                  OrientationHelper.forceOrientation(
                      DeviceOrientation.values[_rotateIndex]);
                  print('rotate index: $_rotateIndex');
                },
                child: Text('force'),
              ),
              RaisedButton(
                onPressed: () {
                  _lockAutoRotate = !_lockAutoRotate;
                  print('lock rotate: $_lockAutoRotate');
                },
                child: Text('lock/unlock'),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text('Rotate Sensor: '),
              StreamBuilder<dynamic>(
                stream: PlatformUtil.sensorStream,
                initialData: '-1',
                builder: (context, snapshot) {
                  return Text(
                      '${snapshot.data.toString()} (listener: $_sensorOn)');
                },
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  if (_sensorOn) {
                    PlatformUtil.stopSensorListener();
                    _sensorOn = false;
                  } else {
                    PlatformUtil.enableSensorListener();
                    _sensorOn = true;
                  }
                },
                child: Text('sensor'),
              ),
              RaisedButton(
                onPressed: () {
                  PlatformUtil.disableSensor();
                },
                child: Text('sensor off'),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text('Bloc Test: '),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  _bloc.add(GetDescEvent());
                },
                child: Text('event1'),
              ),
              RaisedButton(
                onPressed: () {
                  _bloc.add(GetDescEvent2(data: 'test'));
                },
                child: Text('event2'),
              ),
            ],
          ),
          Expanded(
            child: BlocProvider(
              create: (_) => _bloc,
              child: BlocBuilder<Template2Bloc, Template2State>(
                builder: (context, state) {
                  return state.when(
                    tp2Initial: (_) => Template2Control(),
                    tp2Loading: (_) => LoadingWidget(),
                    tp2Loaded: (_) => Template2Display(desc: state.props.first),
                    tp2Error: (_) => ToastError(message: state.props.first),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
