import 'package:flutter_ty_mobile/features/users/data/models/user_freezed.dart'
    show LoginStatus, UserEntity;
import 'package:flutter_ty_mobile/features/router/route_user_streams.dart' show getRouteUserStreams;
import 'package:flutter_ty_mobile/features/router/router_navigate.dart' show RouterNavigate, RouteInfo, PagesNameExtension;
import 'package:mobx/mobx.dart';

part 'feature_screen_store.g.dart';

class FeatureScreenStore = _FeatureScreenStore with _$FeatureScreenStore;

abstract class _FeatureScreenStore with Store {
  _FeatureScreenStore() {
    // initialize route observe
    _streamRoute = ObservableStream(RouterNavigate.routeStream);
    _streamRoute.listen((route) => pageInfo = route);
    pageInfo ??= RouterNavigate.current.toRoutePage.value;

    // initialize user status observe
    _streamUser = ObservableStream(getRouteUserStreams.userStream);
    _streamUser.listen((data) => userStatus = data);
    userStatus = LoginStatus(loggedIn: false);
  }

  /* observe route change */
  @observable
  ObservableStream<RouteInfo> _streamRoute;

  /* current route's info */
  @observable
  RouteInfo pageInfo;

  /* observe user change */
  @observable
  ObservableStream<LoginStatus> _streamUser;

  /* current user status */
  @observable
  LoginStatus userStatus;

  /* current user */
  UserEntity get user => userStatus.currentUser;

  @computed
  bool get hasUser => (userStatus != null) ? userStatus.loggedIn : false;

  /* bottom navigator selected index */
  @computed
  int get navIndex => (pageInfo != null && pageInfo.bottomNavIndex != null)
      ? pageInfo.bottomNavIndex
      : -1;
}
