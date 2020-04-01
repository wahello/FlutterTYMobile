// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'route_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RouteInfoTearOff {
  const _$RouteInfoTearOff();

  _RouteInfo call(
      {@required String route,
      @required String title,
      String parentRoute = Router.homeRoute,
      bool isFeature = false,
      bool hideAppbarActions = false,
      int bottomNavIndex = -1}) {
    return _RouteInfo(
      route: route,
      title: title,
      parentRoute: parentRoute,
      isFeature: isFeature,
      hideAppbarActions: hideAppbarActions,
      bottomNavIndex: bottomNavIndex,
    );
  }
}

// ignore: unused_element
const $RouteInfo = _$RouteInfoTearOff();

mixin _$RouteInfo {
  String get route;
  String get title;
  String get parentRoute;
  bool get isFeature;
  bool get hideAppbarActions;
  int get bottomNavIndex;

  $RouteInfoCopyWith<RouteInfo> get copyWith;
}

abstract class $RouteInfoCopyWith<$Res> {
  factory $RouteInfoCopyWith(RouteInfo value, $Res Function(RouteInfo) then) =
      _$RouteInfoCopyWithImpl<$Res>;
  $Res call(
      {String route,
      String title,
      String parentRoute,
      bool isFeature,
      bool hideAppbarActions,
      int bottomNavIndex});
}

class _$RouteInfoCopyWithImpl<$Res> implements $RouteInfoCopyWith<$Res> {
  _$RouteInfoCopyWithImpl(this._value, this._then);

  final RouteInfo _value;
  // ignore: unused_field
  final $Res Function(RouteInfo) _then;

  @override
  $Res call({
    Object route = freezed,
    Object title = freezed,
    Object parentRoute = freezed,
    Object isFeature = freezed,
    Object hideAppbarActions = freezed,
    Object bottomNavIndex = freezed,
  }) {
    return _then(_value.copyWith(
      route: route == freezed ? _value.route : route as String,
      title: title == freezed ? _value.title : title as String,
      parentRoute:
          parentRoute == freezed ? _value.parentRoute : parentRoute as String,
      isFeature: isFeature == freezed ? _value.isFeature : isFeature as bool,
      hideAppbarActions: hideAppbarActions == freezed
          ? _value.hideAppbarActions
          : hideAppbarActions as bool,
      bottomNavIndex: bottomNavIndex == freezed
          ? _value.bottomNavIndex
          : bottomNavIndex as int,
    ));
  }
}

abstract class _$RouteInfoCopyWith<$Res> implements $RouteInfoCopyWith<$Res> {
  factory _$RouteInfoCopyWith(
          _RouteInfo value, $Res Function(_RouteInfo) then) =
      __$RouteInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String route,
      String title,
      String parentRoute,
      bool isFeature,
      bool hideAppbarActions,
      int bottomNavIndex});
}

class __$RouteInfoCopyWithImpl<$Res> extends _$RouteInfoCopyWithImpl<$Res>
    implements _$RouteInfoCopyWith<$Res> {
  __$RouteInfoCopyWithImpl(_RouteInfo _value, $Res Function(_RouteInfo) _then)
      : super(_value, (v) => _then(v as _RouteInfo));

  @override
  _RouteInfo get _value => super._value as _RouteInfo;

  @override
  $Res call({
    Object route = freezed,
    Object title = freezed,
    Object parentRoute = freezed,
    Object isFeature = freezed,
    Object hideAppbarActions = freezed,
    Object bottomNavIndex = freezed,
  }) {
    return _then(_RouteInfo(
      route: route == freezed ? _value.route : route as String,
      title: title == freezed ? _value.title : title as String,
      parentRoute:
          parentRoute == freezed ? _value.parentRoute : parentRoute as String,
      isFeature: isFeature == freezed ? _value.isFeature : isFeature as bool,
      hideAppbarActions: hideAppbarActions == freezed
          ? _value.hideAppbarActions
          : hideAppbarActions as bool,
      bottomNavIndex: bottomNavIndex == freezed
          ? _value.bottomNavIndex
          : bottomNavIndex as int,
    ));
  }
}

class _$_RouteInfo implements _RouteInfo {
  const _$_RouteInfo(
      {@required this.route,
      @required this.title,
      this.parentRoute = Router.homeRoute,
      this.isFeature = false,
      this.hideAppbarActions = false,
      this.bottomNavIndex = -1})
      : assert(route != null),
        assert(title != null),
        assert(parentRoute != null),
        assert(isFeature != null),
        assert(hideAppbarActions != null),
        assert(bottomNavIndex != null);

  @override
  final String route;
  @override
  final String title;
  @JsonKey(defaultValue: Router.homeRoute)
  @override
  final String parentRoute;
  @JsonKey(defaultValue: false)
  @override
  final bool isFeature;
  @JsonKey(defaultValue: false)
  @override
  final bool hideAppbarActions;
  @JsonKey(defaultValue: -1)
  @override
  final int bottomNavIndex;

  @override
  String toString() {
    return 'RouteInfo(route: $route, title: $title, parentRoute: $parentRoute, isFeature: $isFeature, hideAppbarActions: $hideAppbarActions, bottomNavIndex: $bottomNavIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RouteInfo &&
            (identical(other.route, route) ||
                const DeepCollectionEquality().equals(other.route, route)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.parentRoute, parentRoute) ||
                const DeepCollectionEquality()
                    .equals(other.parentRoute, parentRoute)) &&
            (identical(other.isFeature, isFeature) ||
                const DeepCollectionEquality()
                    .equals(other.isFeature, isFeature)) &&
            (identical(other.hideAppbarActions, hideAppbarActions) ||
                const DeepCollectionEquality()
                    .equals(other.hideAppbarActions, hideAppbarActions)) &&
            (identical(other.bottomNavIndex, bottomNavIndex) ||
                const DeepCollectionEquality()
                    .equals(other.bottomNavIndex, bottomNavIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(route) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(parentRoute) ^
      const DeepCollectionEquality().hash(isFeature) ^
      const DeepCollectionEquality().hash(hideAppbarActions) ^
      const DeepCollectionEquality().hash(bottomNavIndex);

  @override
  _$RouteInfoCopyWith<_RouteInfo> get copyWith =>
      __$RouteInfoCopyWithImpl<_RouteInfo>(this, _$identity);
}

abstract class _RouteInfo implements RouteInfo {
  const factory _RouteInfo(
      {@required String route,
      @required String title,
      String parentRoute,
      bool isFeature,
      bool hideAppbarActions,
      int bottomNavIndex}) = _$_RouteInfo;

  @override
  String get route;
  @override
  String get title;
  @override
  String get parentRoute;
  @override
  bool get isFeature;
  @override
  bool get hideAppbarActions;
  @override
  int get bottomNavIndex;
  @override
  _$RouteInfoCopyWith<_RouteInfo> get copyWith;
}
