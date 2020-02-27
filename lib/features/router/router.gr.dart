// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_ty_mobile/features/home/presentation/home_route.dart';
import 'package:flutter_ty_mobile/features/users/presentation/login_route.dart';
import 'package:flutter_ty_mobile/features/web/web_route.dart';
import 'package:flutter_ty_mobile/features/member/presentation/member_route.dart';
import 'package:flutter_ty_mobile/template/mobx/presentation/template_route.dart';
import 'package:flutter_ty_mobile/template/page/presentation/template2_route.dart';

class Router {
  static const homeRoute = '/';
  static const loginRoute = '/login-route';
  static const serviceRoute = '/service-route';
  static const memberRoute = '/member-route';
  static const templateRoute = '/template-route';
  static const template2Route = '/template2-route';
  static const _guardedRoutes = const {};
  static final navigator = ExtendedNavigator();
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Router.homeRoute:
        if (hasInvalidArgs<Key>(args)) {
          return misTypedArgsRoute<Key>(args);
        }
        final typedArgs = args as Key;
        return MaterialPageRoute<dynamic>(
          builder: (_) => HomeRoute(key: typedArgs),
          settings: settings,
        );
      case Router.loginRoute:
        return MaterialPageRoute<dynamic>(
          builder: (_) => LoginRoute(),
          settings: settings,
        );
      case Router.serviceRoute:
        if (hasInvalidArgs<String>(args, isRequired: true)) {
          return misTypedArgsRoute<String>(args);
        }
        final typedArgs = args as String;
        return MaterialPageRoute<dynamic>(
          builder: (_) => WebRoute(startUrl: typedArgs),
          settings: settings,
        );
      case Router.memberRoute:
        if (hasInvalidArgs<Key>(args)) {
          return misTypedArgsRoute<Key>(args);
        }
        final typedArgs = args as Key;
        return MaterialPageRoute<dynamic>(
          builder: (_) => MemberRoute(key: typedArgs),
          settings: settings,
        );
      case Router.templateRoute:
        return MaterialPageRoute<dynamic>(
          builder: (_) => TemplateRoute(),
          settings: settings,
          fullscreenDialog: true,
        );
      case Router.template2Route:
        return MaterialPageRoute<dynamic>(
          builder: (_) => Template2Route(),
          settings: settings,
          fullscreenDialog: true,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}
