import 'dart:async' show StreamController;

import 'package:flutter/services.dart' show SystemChrome, SystemUiOverlay;
import 'package:flutter_ty_mobile/core/internal/orientation_helper.dart';
import 'package:flutter_ty_mobile/mylogger.dart';

import 'route_info.dart';
import 'route_page.dart';
import 'route_user_streams.dart';
import 'router.gr.dart';
import 'screen_router.gr.dart';

export 'route_info.dart';
export 'route_page.dart';

///
/// Main Router Action class to switch between routes
///
class RouterNavigate {
  static final routerStreams = getRouteUserStreams;

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

  /// Switch to different screen
  /// switch to app home page by default.
  /// [web] = true, will open a fullscreen web page,
  /// and use [webArg] to pass the url.
  static switchScreen({bool web = false, Object webArg}) {
    try {
      if (web) {
        ScreenRouter.navigator.pushNamed(
          ScreenRouter.webGameScreen,
          arguments: webArg,
        );
        screenIndex = 1;
        // to hide only bottom bar:
//        SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
        // to hide only status bar:
//        SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
        // to hide both:
        SystemChrome.setEnabledSystemUIOverlays([]);
      } else {
        if (ScreenRouter.navigator.canPop())
          ScreenRouter.navigator.pop();
        else {
          try {
            ScreenRouter.navigator.pushReplacementNamed(
              ScreenRouter.featureScreen,
            );
          } catch (e) {
            ScreenRouter.navigator.pushNamedAndRemoveUntil(
              ScreenRouter.featureScreen,
              (route) =>
                  route.settings.name == ScreenRouter.featureScreen ||
                  route.settings.name == ScreenRouter.webGameScreen,
            );
          }
        }
        screenIndex = 0;
        // Rotate to normal
        OrientationHelper.forceOrientationEasy();
        // restore the screen to normal SystemUiOverlay
        SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
      }
    } catch (e) {
      MyLogger.error(
          msg:
              'navigate to screen has exception!! Router current: $_currentRoute, previous: $_previousRoute',
          error: e,
          tag: _tag);
    }
  }

  /// Navigate to [page], and clean the stack if route is declared feature
  /// use [arg] to pass [page]'s arguments.
  static navigateToPage(RoutePage page, {Object arg}) {
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

  /// Pop the current page
  static navigateBack() {
    print('navigate back, current:$_currentRoute, previous: $_previousRoute, '
        'canPop: ${Router.navigator.canPop()}');
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
    }

    var page = _previousRoute.toRoutePage;
    _setPath(page.page, parentRoute: page.pageRoot);
    _routeInfo.sink.add(page.value);
  }

  /// Navigate to [Router.homeRoute] and clean the stack
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
//    print('update home app bar on clean');
    _routeInfo.sink.add(RoutePage.home.value);
  }

  static _setPath(String route, {String parentRoute = ''}) {
    _previousRoute = parentRoute.isEmpty ? _currentRoute : parentRoute;
    _currentRoute = route;
    print(
        'set navigate path, current:$_currentRoute, previous: $_previousRoute');
  }

  static resetCheckUser() => routerStreams.setCheck(false);

  static testNavigate(RoutePage page) {
    print('test navigate...page: ${page.value}');
    _setPath(page.page, parentRoute: page.pageRoot);
    _routeInfo.sink.add(page.value);
  }
}
