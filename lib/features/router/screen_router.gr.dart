// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_ty_mobile/features/screen/feature_screen.dart';
import 'package:flutter_ty_mobile/features/screen/web_game_screen.dart';

class ScreenRouter {
  static const featureScreen = '/';
  static const webGameScreen = '/web-game-screen';
  static final navigator = ExtendedNavigator();
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case ScreenRouter.featureScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => FeatureScreen(),
          settings: settings,
          maintainState: true,
        );
      case ScreenRouter.webGameScreen:
        if (hasInvalidArgs<String>(args)) {
          return misTypedArgsRoute<String>(args);
        }
        final typedArgs = args as String ?? 'https://eg990.com/';
        return MaterialPageRoute<dynamic>(
          builder: (_) => WebGameScreen(startUrl: typedArgs),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}
