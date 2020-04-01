import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_ty_mobile/features/home/presentation/home_route.dart';
import 'package:flutter_ty_mobile/features/member/presentation/member_route.dart';
import 'package:flutter_ty_mobile/features/promo/presentation/promo_route.dart';
import 'package:flutter_ty_mobile/features/subfeatures/deposit/presentation/deposit_route.dart';
import 'package:flutter_ty_mobile/features/users/presentation/login_route.dart';
import 'package:flutter_ty_mobile/features/web/web_route.dart';
import 'package:flutter_ty_mobile/template/mobx/presentation/template_route.dart';
import 'package:flutter_ty_mobile/template/page/presentation/template2_route.dart';

@MaterialAutoRouter()
class $Router {
  @MaterialRoute(initial: true)
  HomeRoute homeRoute;
  @MaterialRoute()
  LoginRoute loginRoute;
  @MaterialRoute()
  WebRoute serviceRoute;
  @MaterialRoute()
  MemberRoute memberRoute;
  @MaterialRoute()
  PromoRoute promoRoute;
  @MaterialRoute()
  DepositRoute depositRoute;
  @MaterialRoute()
  WebRoute depositWebRoute;

  /// test route
  @MaterialRoute(fullscreenDialog: true)
  TemplateRoute templateRoute;
  @MaterialRoute(fullscreenDialog: true)
  Template2Route template2Route;
//  @CustomRoute(
//    transitionsBuilder: TransitionsBuilders.zoomIn,
//    durationInMilliseconds: 200,
//  )
}
