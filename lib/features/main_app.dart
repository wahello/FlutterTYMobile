import 'dart:io' show Platform, exit;

import 'package:flui/flui.dart' show FLToastDefaults, FLToastProvider;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemChannels;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_ty_mobile/features/route_page_export.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import '../core/data/hive_adapters_export.dart';
import '../core/internal/permission_item.dart';
import '../core/internal/themes.dart';
import '../generated/l10n.dart';
import '../injection_container.dart' as di;
import '../mylogger.dart';
import 'main_startup.dart';

class MainApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> with WidgetsBindingObserver {
  final String tag = 'Main';
  final List<PermissionItem> permissions = List<PermissionItem>();
  final FLToastDefaults _toastDefaults = FLToastDefaults();
  var _hiveInitialized = false;

  void _initPermissionList() async {
    permissions.clear();
    await Future.forEach(
        PermissionGroup.values,
        (value) =>
            permissions.add(PermissionItem(value, PermissionStatus.unknown)));
    return _resolvePermissionState();
  }

  Future<void> _resolvePermissionState() async {
    await Future.forEach(permissions, (item) async {
      int index = permissions.indexOf(item);
      await (PermissionHandler().checkPermissionStatus(item.group))
          .then((status) => permissions[index].status = status);
    });
    if (permissions.isNotEmpty) permissions.requestPermission();
  }

  Future<void> _initHive() async {
    if (!_hiveInitialized) {
      final docDir = await getApplicationDocumentsDirectory();
      Hive.init(docDir.path);
      MyLogger.debug(msg: 'Hive initialized, location: $docDir', tag: tag);

      //TODO: Register data adapters here
      try {
        Hive.registerAdapter(BannerEntityAdapter());
//        Hive.registerAdapter(MarqueeEntityAdapter());
        Hive.registerAdapter(GameCategoryModelAdapter());
        Hive.registerAdapter(GamePlatformEntityAdapter());
        Hive.registerAdapter(CookieAdapter());
        Hive.registerAdapter(HiveCookieEntityAdapter());
        Hive.registerAdapter(PromoEntityAdapter());
        Hive.registerAdapter(UserLoginHiveFormAdapter());
      } catch (e) {
        MyLogger.warn(
            msg: 'register hive adapter has error!!', tag: tag, error: e);
      }
      _hiveInitialized = true;
      return await Future.delayed(
          Duration(milliseconds: 200),
          () => MyLogger.debug(
              msg: 'Hive adapters had been registered', tag: tag));
    }

    /// Rebuild the app if Hive had been initialized
    MyLogger.debug(msg: 'Hive already initialized!!', tag: tag);
    return await Future.value();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    switch (state) {
      case AppLifecycleState.paused:
        MyLogger.info(msg: 'app paused', tag: tag);
        SystemChannels.platform.invokeMethod<void>('SystemNavigator.pop');
        exit(0); // exit the app on paused
        break;
      case AppLifecycleState.resumed:
        MyLogger.info(msg: 'app resumed', tag: tag);
        break;
      case AppLifecycleState.inactive:
        MyLogger.info(msg: 'app inactive', tag: tag);
        break;
      case AppLifecycleState.detached:
        MyLogger.info(msg: 'app detached', tag: tag);
        break;
    }
  }

  @override
  void initState() {
    MyLogger.info(msg: 'app init', tag: tag);
    _initPermissionList();
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() async {
    await Hive.close().then((value) => _hiveInitialized = false);
    di.sl.get<RouteUserStreams>().dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MyLogger.info(msg: 'app build', tag: tag);
    return FutureBuilder(
      future: _initHive(),
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return Container(
            color: Themes.defaultBackgroundColor,
          );
        } else {
          return FLToastProvider(
            defaults: _toastDefaults,
            child: MaterialApp(
              localizationsDelegates: [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                S.delegate
              ],
              supportedLocales: S.delegate.supportedLocales,
              localeListResolutionCallback: (deviceLocale, supportedLocales) {
                print('device locales: $deviceLocale');
                print('supported locales: $supportedLocales');
                if (Platform.isAndroid) {
                  for (var loc in deviceLocale) {
                    for (var supp in supportedLocales) {
                      if (supp.languageCode == loc.languageCode) return supp;
                    }
                  }
                }
                return const Locale.fromSubtags(languageCode: 'zh');
              },
              theme: appTheme.defaultTheme,
              title: 'TY Mobile',
              home: new MainStartup(),
            ),
          );
        }
      },
    );
  }
}
