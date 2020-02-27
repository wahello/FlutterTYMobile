import 'package:flutter_ty_mobile/features/general/data/holds/user_data.dart'
    show UserData;
import 'package:flutter_ty_mobile/features/users/domain/entity/user_entity.dart';
import 'package:mobx/mobx.dart';

import '../router/router_navigate.dart'
    show PagesNameExtension, RouteInfo, RouterNavigate, getRouterStreams;

part 'feature_screen_store.g.dart';

class FeatureScreenStore = _FeatureScreenStore with _$FeatureScreenStore;

abstract class _FeatureScreenStore with Store {
  _FeatureScreenStore() {
    _streamRoute = ObservableStream(RouterNavigate.routeStream);
    _streamRoute.listen((route) => pageInfo = route);
    pageInfo ??= RouterNavigate.current.toRouteInfo.value;

    _streamUser = ObservableStream(getRouterStreams.userStream);
    _streamUser.listen((data) => userData = data);
    userData = UserData(isLoggedIn: false);
  }

  @observable
  ObservableStream<RouteInfo> _streamRoute;

  @observable
  RouteInfo pageInfo;

  @observable
  ObservableStream<UserData> _streamUser;

  @observable
  UserData userData;

  UserEntity get user => userData.user;

  @computed
  bool get hasUser => (userData != null) ? userData.isLoggedIn : false;

  @computed
  int get navIndex => (pageInfo != null && pageInfo.bottomNavIndex != null)
      ? pageInfo.bottomNavIndex
      : -1;
}
