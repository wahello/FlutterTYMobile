part of 'router_navigate.dart';

@ToString()
class RouteInfo {
  final String route;
  final String title;
  final String parentRoute;
  final bool isFeature;
  final bool hideAppbarActions;
  final int bottomNavIndex;

  RouteInfo(
      {@required this.route,
      @required this.title,
      this.parentRoute = Router.homeRoute,
      this.isFeature = false,
      this.hideAppbarActions = false,
      this.bottomNavIndex = -1});

  @override
  String toString() => _$RouteInfoToString(this);
}

class RouterPageInfo extends GenericEnum<RouteInfo> {
  const RouterPageInfo._(RouteInfo info) : super(info);

  static RouterPageInfo home = RouterPageInfo._(RouteInfo(
    route: Router.homeRoute,
    title: localeStr.pageTitleHome,
    isFeature: true,
    bottomNavIndex: 0,
  ));

  static RouterPageInfo login = RouterPageInfo._(RouteInfo(
      route: Router.loginRoute,
      title: localeStr.pageTitleLogin,
      hideAppbarActions: true));

  static RouterPageInfo service = RouterPageInfo._(RouteInfo(
      route: Router.serviceRoute,
      title: localeStr.pageTitleService,
      hideAppbarActions: true));

  static RouterPageInfo member = RouterPageInfo._(RouteInfo(
    route: Router.memberRoute,
    title: localeStr.pageTitleMember,
    isFeature: true,
    bottomNavIndex: 4,
  ));

  /// test route
  static RouterPageInfo template = RouterPageInfo._(RouteInfo(
      route: Router.templateRoute,
      title: 'Test Mobx',
      hideAppbarActions: true));

  static RouterPageInfo template2 = RouterPageInfo._(RouteInfo(
      route: Router.template2Route,
      title: 'Test Bloc',
      hideAppbarActions: true));
}

extension RouterPageInfoExtension on RouterPageInfo {
  String get page => value.route;
  String get pageTitle => value.title;
  String get pageRoot => value.parentRoute;
  bool get isFeature => value.isFeature;
  bool get hideBarAction => value.hideAppbarActions;
  int get navIndex => value.bottomNavIndex;
}

extension PagesNameExtension on String {
  /// Get route info by router name which generates in Router.gr.dart
  RouterPageInfo get toRouteInfo {
    switch (this) {
      case Router.homeRoute:
        return RouterPageInfo.home;
      case Router.loginRoute:
        return RouterPageInfo.login;
      case Router.serviceRoute:
        return RouterPageInfo.service;
      case Router.memberRoute:
        return RouterPageInfo.member;
      case Router.templateRoute:
        return RouterPageInfo.template;
      case Router.template2Route:
        return RouterPageInfo.template2;
      default:
        throw UnknownConditionException();
    }
  }
}
