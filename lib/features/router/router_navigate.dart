import 'dart:async';

import 'package:flutter_ty_mobile/core/error/exceptions.dart';
import 'package:flutter_ty_mobile/core/internal/local_strings.dart';
import 'package:flutter_ty_mobile/features/general/data/holds/user_data.dart';
import 'package:flutter_ty_mobile/features/users/domain/entity/user_entity.dart';
import 'package:flutter_ty_mobile/mylogger.dart';
import 'package:generic_enum/generic_enum.dart';
import 'package:meta/meta.dart' show required;
import 'package:to_string/to_string.dart';

import '../../injection_container.dart' show sl;
import 'router.gr.dart';
import 'screen_router.gr.dart';

part 'router_navigate.g.dart';
part 'router_page.dart';
part 'router_widget_streams.dart';

class RouterNavigate {
  static final routerStreams = getRouterStreams;

  static final String _tag = 'RouterNavigate';
  static int screenIndex = 0;
  static String _currentRoute = '/';
  static String _previousRoute = '/';

  static String get current => _currentRoute;

  static StreamController<RouteInfo> _routeInfo =
      StreamController<RouteInfo>.broadcast();

  static Stream<RouteInfo> get routeStream => _routeInfo.stream;

  static dispose() {
    MyLogger.warn(msg: 'disposing router stream!!', tag: _tag);
    _routeInfo.close();
  }

  static switchScreen({bool web = false, Object webArg}) {
    try {
      if (web) {
        ScreenRouter.navigator.pushNamedAndRemoveUntil(
          ScreenRouter.webGameScreen,
          (route) =>
              route.settings.name == ScreenRouter.featureScreen ||
              route.settings.name == ScreenRouter.webGameScreen,
          arguments: webArg,
        );
        screenIndex = 1;
      } else {
        ScreenRouter.navigator.pushNamedAndRemoveUntil(
          ScreenRouter.featureScreen,
          (route) =>
              route.settings.name == ScreenRouter.featureScreen ||
              route.settings.name == ScreenRouter.webGameScreen,
        );
        screenIndex = 0;
      }
    } catch (e) {
      MyLogger.error(
          msg:
              'navigate to screen has exception!! Router current: $_currentRoute, previous: $_previousRoute',
          error: e,
          tag: _tag);
    }
  }

  static navigateToPage(RouterPageInfo page,
      {bool cleanStack = true, Object arg}) {
    if (page.page == _currentRoute) return;
    if (page.page == Router.homeRoute) {
      navigateClean();
      return;
    }
    try {
      if ((_currentRoute != Router.homeRoute && page.isFeature)) {
        print('navigate feature, from:$_currentRoute to:${page.page}');
        Router.navigator.pushNamedAndRemoveUntil(
          page.page,
          (route) =>
              route.settings.name == page.page ||
              route.settings.name == Router.homeRoute,
          arguments: arg,
        );
        _setPath(page.page, parentRoute: page.pageRoot);
      } else {
        print('navigate page, from:$_currentRoute to:${page.page}');
        Router.navigator.pushNamed(page.page, arguments: arg);
        _setPath(page.page);
      }
    } catch (e) {
      MyLogger.error(
          msg:
              'navigate to page has exception!! Router current: $_currentRoute, previous: $_previousRoute',
          error: e,
          tag: _tag);
    }
    _routeInfo.sink.add(page.value);
  }

  static navigateBack() {
    print(
        'Router current: $_currentRoute, previous: $_previousRoute ,canPop: ${Router.navigator.canPop()}');
    try {
      if (_previousRoute == Router.homeRoute)
        navigateClean();
      else if (_currentRoute != Router.homeRoute && Router.navigator.canPop())
        Router.navigator
            .popUntil((route) => route.settings.name == _previousRoute);
    } catch (e) {
      MyLogger.error(
          msg:
              'navigate back has exception!! Router current: $_currentRoute, previous: $_previousRoute',
          error: e,
          tag: _tag);
      // TODO restart app when router fails.
    }

    var page = _previousRoute.toRouteInfo;
    _setPath(page.page, parentRoute: page.pageRoot);
    _routeInfo.sink.add(page.value);
  }

  static navigateClean() {
    print('navigate to home, from:$_currentRoute');
    if (_currentRoute != Router.homeRoute) {
      try {
//        Router.navigator.pushNamedAndRemoveUntil(Router.homeRoute, (route) => false);
        Router.navigator.pushNamedAndRemoveUntil(
          Router.homeRoute,
          (route) => route.settings.name == Router.homeRoute,
        );
        routerStreams.setCheck(true);
      } catch (e) {
        MyLogger.error(
            msg:
                'navigate clean has exception!! Router current: $_currentRoute, previous: $_previousRoute',
            error: e,
            tag: _tag);
      }
    }
    _setPath(Router.homeRoute, parentRoute: Router.homeRoute);
    print('update home app bar on clean');
    _routeInfo.sink.add(RouterPageInfo.home.value);
  }

  static _setPath(String route, {String parentRoute = ''}) {
    _previousRoute = parentRoute.isEmpty ? _currentRoute : parentRoute;
    _currentRoute = route;
  }

  static resetCheckUser() => routerStreams.setCheck(false);

  static testNavigate(RouterPageInfo page) {
    print('test navigate...page: ${page.value}');
    _setPath(page.page, parentRoute: page.pageRoot);
    _routeInfo.sink.add(page.value);
  }
}
