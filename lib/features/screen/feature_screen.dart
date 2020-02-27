import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemChrome, SystemUiOverlay;
import 'package:flutter_ty_mobile/features/screen/feature_screen_inherited_widget.dart';
import 'package:flutter_ty_mobile/utils/platform_util.dart';

import '../../mylogger.dart';
import 'feature_screen_store.dart';
import 'feature_screen_view.dart';

class FeatureScreen extends StatefulWidget {
  const FeatureScreen();

  @override
  _FeatureScreenState createState() => _FeatureScreenState();
}

class _FeatureScreenState extends State<FeatureScreen> {
  final String tag = 'FeatureScreen';
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  FeatureScreenStore _store = FeatureScreenStore();

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    MyLogger.info(msg: 'build feature screen', tag: tag);
    return WillPopScope(
      child: FeatureScreenInheritedWidget(
        scaffoldKey: _scaffoldKey,
        store: _store,
        child: FeatureScreenView(),
      ),
      onWillPop: () async => Future(() => false),
    );
  }

  @override
  void dispose() {
    MyLogger.warn(msg: 'feature screen disposed', tag: tag);
    super.dispose();
    Future.delayed(Duration(milliseconds: 200), () => PlatformUtil.restart());
  }
}
