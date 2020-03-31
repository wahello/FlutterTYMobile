// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature_screen_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FeatureScreenStore on _FeatureScreenStore, Store {
  Computed<bool> _$hasUserComputed;

  @override
  bool get hasUser =>
      (_$hasUserComputed ??= Computed<bool>(() => super.hasUser)).value;
  Computed<int> _$navIndexComputed;

  @override
  int get navIndex =>
      (_$navIndexComputed ??= Computed<int>(() => super.navIndex)).value;

  final _$_streamRouteAtom = Atom(name: '_FeatureScreenStore._streamRoute');

  @override
  ObservableStream<RouteInfo> get _streamRoute {
    _$_streamRouteAtom.context.enforceReadPolicy(_$_streamRouteAtom);
    _$_streamRouteAtom.reportObserved();
    return super._streamRoute;
  }

  @override
  set _streamRoute(ObservableStream<RouteInfo> value) {
    _$_streamRouteAtom.context.conditionallyRunInAction(() {
      super._streamRoute = value;
      _$_streamRouteAtom.reportChanged();
    }, _$_streamRouteAtom, name: '${_$_streamRouteAtom.name}_set');
  }

  final _$pageInfoAtom = Atom(name: '_FeatureScreenStore.pageInfo');

  @override
  RouteInfo get pageInfo {
    _$pageInfoAtom.context.enforceReadPolicy(_$pageInfoAtom);
    _$pageInfoAtom.reportObserved();
    return super.pageInfo;
  }

  @override
  set pageInfo(RouteInfo value) {
    _$pageInfoAtom.context.conditionallyRunInAction(() {
      super.pageInfo = value;
      _$pageInfoAtom.reportChanged();
    }, _$pageInfoAtom, name: '${_$pageInfoAtom.name}_set');
  }

  final _$_streamUserAtom = Atom(name: '_FeatureScreenStore._streamUser');

  @override
  ObservableStream<LoginStatus> get _streamUser {
    _$_streamUserAtom.context.enforceReadPolicy(_$_streamUserAtom);
    _$_streamUserAtom.reportObserved();
    return super._streamUser;
  }

  @override
  set _streamUser(ObservableStream<LoginStatus> value) {
    _$_streamUserAtom.context.conditionallyRunInAction(() {
      super._streamUser = value;
      _$_streamUserAtom.reportChanged();
    }, _$_streamUserAtom, name: '${_$_streamUserAtom.name}_set');
  }

  final _$userStatusAtom = Atom(name: '_FeatureScreenStore.userStatus');

  @override
  LoginStatus get userStatus {
    _$userStatusAtom.context.enforceReadPolicy(_$userStatusAtom);
    _$userStatusAtom.reportObserved();
    return super.userStatus;
  }

  @override
  set userStatus(LoginStatus value) {
    _$userStatusAtom.context.conditionallyRunInAction(() {
      super.userStatus = value;
      _$userStatusAtom.reportChanged();
    }, _$userStatusAtom, name: '${_$userStatusAtom.name}_set');
  }

  @override
  String toString() {
    final string =
        'pageInfo: ${pageInfo.toString()},userStatus: ${userStatus.toString()},hasUser: ${hasUser.toString()},navIndex: ${navIndex.toString()}';
    return '{$string}';
  }
}
