import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemChrome, SystemUiOverlay;
import 'package:flutter_ty_mobile/features/screen/feature_screen_inherited_widget.dart';
import 'package:flutter_ty_mobile/utils/platform_util.dart';

import '../../mylogger.dart';
import 'feature_screen_store.dart';
import 'feature_screen_view.dart';

///
/// Main app screen
///
/// Include [FeatureScreenStore] which holds current page info and user data.
/// Uses [WillPopScope] to maintain [FeatureScreenView]
///
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
    MyLogger.debug(msg: 'init feature screen', tag: tag);
    // restore the screen to normal SystemUiOverlay
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    super.initState();
  }

  @override
  void didUpdateWidget(FeatureScreen oldWidget) {
    MyLogger.debug(msg: 'update feature screen', tag: tag);
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    MyLogger.debug(msg: 'change feature screen', tag: tag);
    super.didChangeDependencies();
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
      onWillPop: () async {
        MyLogger.debug(msg: 'pop feature screen', tag: 'FeatureScreen');
        return Future(() => false);
      },
    );
  }

  @override
  void dispose() {
    MyLogger.warn(msg: 'feature screen disposed', tag: tag);
    super.dispose();
    Future.delayed(Duration(milliseconds: 200), () => PlatformUtil.restart());
  }
}
