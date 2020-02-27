import 'package:flutter/material.dart';

import 'core/internal/device.dart';
import 'core/internal/global.dart';
import 'core/internal/local_strings.dart';
import 'features/router/router_navigate.dart';
import 'features/router/screen_router.gr.dart';
import 'injection_container.dart' show sl;

///@author H.C.CHIANG
///@version 2020/2/5
class MainStartup extends StatelessWidget {
  void registerLocale(BuildContext context) {
    sl.registerSingleton<LocalStrings>(LocalStrings(context));
    Global.regLocale = true;
    print('test locale res:${localeStr.pageTitleHome}');
//    sl.get<LocalStrings>().init().then((value) {
//      print('test locale res1:${S.of(context).pageHomeRoute}');
//      print('test locale res2:${sl.get<LocalStrings>().res.pageHomeRoute}');
//    });
  }

  void getDeviceInfo(BuildContext context) {
    Global.device = Device(MediaQuery.of(context),
        MediaQuery.of(context).size.width, MediaQuery.of(context).size.height);
    print('Device Size: ${Global.device}');
  }

  @override
  Widget build(BuildContext context) {
    if (Global.device == null) getDeviceInfo(context);
    if (Global.regLocale == false) registerLocale(context);
    return WillPopScope(
      child: Scaffold(
        body: Navigator(
          key: ScreenRouter.navigator.key,
          onGenerateRoute: ScreenRouter.onGenerateRoute,
        ),
      ),
      onWillPop: () async {
        if (RouterNavigate.screenIndex == 1)
          RouterNavigate.switchScreen();
        else if (RouterNavigate.current == '/')
          return Future(() => true);
        else
          RouterNavigate.navigateClean();
        return false;
      },
    );
  }
}
