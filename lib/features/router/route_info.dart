import 'package:flutter_ty_mobile/features/router/router.gr.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'route_info.freezed.dart';

@freezed
abstract class RouteInfo with _$RouteInfo {
  const factory RouteInfo({
    @required String route,
    @required String title,
    @Default(Router.homeRoute) String parentRoute,
    @Default(false) bool isFeature,
    @Default(false) bool hideAppbarActions,
    @Default(-1) int bottomNavIndex,
  }) = _RouteInfo;
}