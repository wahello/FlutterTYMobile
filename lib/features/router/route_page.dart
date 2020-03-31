import 'package:flutter_ty_mobile/core/error/exceptions.dart'
    show UnknownConditionException;
import 'package:flutter_ty_mobile/core/internal/local_strings.dart'
    show localeStr;
import 'package:generic_enum/generic_enum.dart';

import 'route_info.dart';
import 'router.gr.dart';

class RoutePage extends GenericEnum<RouteInfo> {
  const RoutePage._(RouteInfo info) : super(info);

  static RoutePage home = RoutePage._(RouteInfo(
    route: Router.homeRoute,
    title: localeStr.pageTitleHome,
    isFeature: true,
    bottomNavIndex: 0,
  ));

  static RoutePage login = RoutePage._(RouteInfo(
    route: Router.loginRoute,
    title: localeStr.pageTitleLogin,
    hideAppbarActions: true,
  ));

  static RoutePage deposit = RoutePage._(RouteInfo(
    route: Router.depositRoute,
    title: localeStr.pageTitleDeposit,
    isFeature: true,
    bottomNavIndex: 1,
  ));

  static RoutePage depositWeb = RoutePage._(RouteInfo(
    route: Router.depositWebRoute,
    title: localeStr.pageTitleDeposit,
    parentRoute: Router.depositRoute,
  ));

  static RoutePage promo = RoutePage._(RouteInfo(
    route: Router.promoRoute,
    title: localeStr.pageTitlePromo,
    isFeature: true,
    bottomNavIndex: 2,
  ));

  static RoutePage service = RoutePage._(RouteInfo(
    route: Router.serviceRoute,
    title: localeStr.pageTitleService,
    bottomNavIndex: 3,
    hideAppbarActions: true,
  ));

  static RoutePage member = RoutePage._(RouteInfo(
    route: Router.memberRoute,
    title: localeStr.pageTitleMember,
    isFeature: true,
    bottomNavIndex: 4,
  ));

  /// test route
  static RoutePage template = RoutePage._(RouteInfo(
      route: Router.templateRoute,
      title: 'Test Mobx',
      hideAppbarActions: true));

  static RoutePage template2 = RoutePage._(RouteInfo(
      route: Router.template2Route,
      title: 'Test Bloc',
      hideAppbarActions: true));
}

extension RouterPageInfoExtension on RoutePage {
  String get page => value.route;
  String get pageTitle => value.title;
  String get pageRoot => value.parentRoute;
  bool get isFeature => value.isFeature;
  bool get hideBarAction => value.hideAppbarActions;
  int get navIndex => value.bottomNavIndex;
}

extension PagesNameExtension on String {
  /// Get route info by router name which generates in Router.gr.dart
  RoutePage get toRoutePage {
    switch (this) {
      case Router.homeRoute:
        return RoutePage.home;
      case Router.loginRoute:
        return RoutePage.login;
      case Router.depositRoute:
        return RoutePage.deposit;
      case Router.promoRoute:
        return RoutePage.promo;
      case Router.serviceRoute:
        return RoutePage.service;
      case Router.memberRoute:
        return RoutePage.member;
      case Router.templateRoute:
        return RoutePage.template;
      case Router.template2Route:
        return RoutePage.template2;
      default:
        throw UnknownConditionException();
    }
  }
}
