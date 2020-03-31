// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'member_grid_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MemberGridDataFreezedTearOff {
  const _$MemberGridDataFreezedTearOff();

  MemberGridData call(
      {@required String title,
      @required IconData iconData,
      @required Color iconDecorColorStart,
      @required Color iconDecorColorEnd,
      RoutePage route}) {
    return MemberGridData(
      title: title,
      iconData: iconData,
      iconDecorColorStart: iconDecorColorStart,
      iconDecorColorEnd: iconDecorColorEnd,
      route: route,
    );
  }

  MemberGridDataV2 v2(
      {@required String title, @required String imageName, RoutePage route}) {
    return MemberGridDataV2(
      title: title,
      imageName: imageName,
      route: route,
    );
  }
}

// ignore: unused_element
const $MemberGridDataFreezed = _$MemberGridDataFreezedTearOff();

mixin _$MemberGridDataFreezed {
  String get title;
  RoutePage get route;

  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        @required String title,
        @required IconData iconData,
        @required Color iconDecorColorStart,
        @required Color iconDecorColorEnd,
        RoutePage route), {
    @required
        Result v2(@required String title, @required String imageName,
            RoutePage route),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        @required String title,
        @required IconData iconData,
        @required Color iconDecorColorStart,
        @required Color iconDecorColorEnd,
        RoutePage route), {
    Result v2(
        @required String title, @required String imageName, RoutePage route),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(MemberGridData value), {
    @required Result v2(MemberGridDataV2 value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(MemberGridData value), {
    Result v2(MemberGridDataV2 value),
    @required Result orElse(),
  });

  $MemberGridDataFreezedCopyWith<MemberGridDataFreezed> get copyWith;
}

abstract class $MemberGridDataFreezedCopyWith<$Res> {
  factory $MemberGridDataFreezedCopyWith(MemberGridDataFreezed value,
          $Res Function(MemberGridDataFreezed) then) =
      _$MemberGridDataFreezedCopyWithImpl<$Res>;
  $Res call({String title, RoutePage route});
}

class _$MemberGridDataFreezedCopyWithImpl<$Res>
    implements $MemberGridDataFreezedCopyWith<$Res> {
  _$MemberGridDataFreezedCopyWithImpl(this._value, this._then);

  final MemberGridDataFreezed _value;
  // ignore: unused_field
  final $Res Function(MemberGridDataFreezed) _then;

  @override
  $Res call({
    Object title = freezed,
    Object route = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      route: route == freezed ? _value.route : route as RoutePage,
    ));
  }
}

abstract class $MemberGridDataCopyWith<$Res>
    implements $MemberGridDataFreezedCopyWith<$Res> {
  factory $MemberGridDataCopyWith(
          MemberGridData value, $Res Function(MemberGridData) then) =
      _$MemberGridDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      IconData iconData,
      Color iconDecorColorStart,
      Color iconDecorColorEnd,
      RoutePage route});
}

class _$MemberGridDataCopyWithImpl<$Res>
    extends _$MemberGridDataFreezedCopyWithImpl<$Res>
    implements $MemberGridDataCopyWith<$Res> {
  _$MemberGridDataCopyWithImpl(
      MemberGridData _value, $Res Function(MemberGridData) _then)
      : super(_value, (v) => _then(v as MemberGridData));

  @override
  MemberGridData get _value => super._value as MemberGridData;

  @override
  $Res call({
    Object title = freezed,
    Object iconData = freezed,
    Object iconDecorColorStart = freezed,
    Object iconDecorColorEnd = freezed,
    Object route = freezed,
  }) {
    return _then(MemberGridData(
      title: title == freezed ? _value.title : title as String,
      iconData: iconData == freezed ? _value.iconData : iconData as IconData,
      iconDecorColorStart: iconDecorColorStart == freezed
          ? _value.iconDecorColorStart
          : iconDecorColorStart as Color,
      iconDecorColorEnd: iconDecorColorEnd == freezed
          ? _value.iconDecorColorEnd
          : iconDecorColorEnd as Color,
      route: route == freezed ? _value.route : route as RoutePage,
    ));
  }
}

class _$MemberGridData with DiagnosticableTreeMixin implements MemberGridData {
  const _$MemberGridData(
      {@required this.title,
      @required this.iconData,
      @required this.iconDecorColorStart,
      @required this.iconDecorColorEnd,
      this.route})
      : assert(title != null),
        assert(iconData != null),
        assert(iconDecorColorStart != null),
        assert(iconDecorColorEnd != null);

  @override
  final String title;
  @override
  final IconData iconData;
  @override
  final Color iconDecorColorStart;
  @override
  final Color iconDecorColorEnd;
  @override
  final RoutePage route;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MemberGridDataFreezed(title: $title, iconData: $iconData, iconDecorColorStart: $iconDecorColorStart, iconDecorColorEnd: $iconDecorColorEnd, route: $route)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MemberGridDataFreezed'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('iconData', iconData))
      ..add(DiagnosticsProperty('iconDecorColorStart', iconDecorColorStart))
      ..add(DiagnosticsProperty('iconDecorColorEnd', iconDecorColorEnd))
      ..add(DiagnosticsProperty('route', route));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MemberGridData &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.iconData, iconData) ||
                const DeepCollectionEquality()
                    .equals(other.iconData, iconData)) &&
            (identical(other.iconDecorColorStart, iconDecorColorStart) ||
                const DeepCollectionEquality()
                    .equals(other.iconDecorColorStart, iconDecorColorStart)) &&
            (identical(other.iconDecorColorEnd, iconDecorColorEnd) ||
                const DeepCollectionEquality()
                    .equals(other.iconDecorColorEnd, iconDecorColorEnd)) &&
            (identical(other.route, route) ||
                const DeepCollectionEquality().equals(other.route, route)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(iconData) ^
      const DeepCollectionEquality().hash(iconDecorColorStart) ^
      const DeepCollectionEquality().hash(iconDecorColorEnd) ^
      const DeepCollectionEquality().hash(route);

  @override
  $MemberGridDataCopyWith<MemberGridData> get copyWith =>
      _$MemberGridDataCopyWithImpl<MemberGridData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        @required String title,
        @required IconData iconData,
        @required Color iconDecorColorStart,
        @required Color iconDecorColorEnd,
        RoutePage route), {
    @required
        Result v2(@required String title, @required String imageName,
            RoutePage route),
  }) {
    assert($default != null);
    assert(v2 != null);
    return $default(
        title, iconData, iconDecorColorStart, iconDecorColorEnd, route);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        @required String title,
        @required IconData iconData,
        @required Color iconDecorColorStart,
        @required Color iconDecorColorEnd,
        RoutePage route), {
    Result v2(
        @required String title, @required String imageName, RoutePage route),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(
          title, iconData, iconDecorColorStart, iconDecorColorEnd, route);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(MemberGridData value), {
    @required Result v2(MemberGridDataV2 value),
  }) {
    assert($default != null);
    assert(v2 != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(MemberGridData value), {
    Result v2(MemberGridDataV2 value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class MemberGridData implements MemberGridDataFreezed {
  const factory MemberGridData(
      {@required String title,
      @required IconData iconData,
      @required Color iconDecorColorStart,
      @required Color iconDecorColorEnd,
      RoutePage route}) = _$MemberGridData;

  @override
  String get title;
  IconData get iconData;
  Color get iconDecorColorStart;
  Color get iconDecorColorEnd;
  @override
  RoutePage get route;
  @override
  $MemberGridDataCopyWith<MemberGridData> get copyWith;
}

abstract class $MemberGridDataV2CopyWith<$Res>
    implements $MemberGridDataFreezedCopyWith<$Res> {
  factory $MemberGridDataV2CopyWith(
          MemberGridDataV2 value, $Res Function(MemberGridDataV2) then) =
      _$MemberGridDataV2CopyWithImpl<$Res>;
  @override
  $Res call({String title, String imageName, RoutePage route});
}

class _$MemberGridDataV2CopyWithImpl<$Res>
    extends _$MemberGridDataFreezedCopyWithImpl<$Res>
    implements $MemberGridDataV2CopyWith<$Res> {
  _$MemberGridDataV2CopyWithImpl(
      MemberGridDataV2 _value, $Res Function(MemberGridDataV2) _then)
      : super(_value, (v) => _then(v as MemberGridDataV2));

  @override
  MemberGridDataV2 get _value => super._value as MemberGridDataV2;

  @override
  $Res call({
    Object title = freezed,
    Object imageName = freezed,
    Object route = freezed,
  }) {
    return _then(MemberGridDataV2(
      title: title == freezed ? _value.title : title as String,
      imageName: imageName == freezed ? _value.imageName : imageName as String,
      route: route == freezed ? _value.route : route as RoutePage,
    ));
  }
}

class _$MemberGridDataV2
    with DiagnosticableTreeMixin
    implements MemberGridDataV2 {
  const _$MemberGridDataV2(
      {@required this.title, @required this.imageName, this.route})
      : assert(title != null),
        assert(imageName != null);

  @override
  final String title;
  @override
  final String imageName;
  @override
  final RoutePage route;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MemberGridDataFreezed.v2(title: $title, imageName: $imageName, route: $route)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MemberGridDataFreezed.v2'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('imageName', imageName))
      ..add(DiagnosticsProperty('route', route));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MemberGridDataV2 &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.imageName, imageName) ||
                const DeepCollectionEquality()
                    .equals(other.imageName, imageName)) &&
            (identical(other.route, route) ||
                const DeepCollectionEquality().equals(other.route, route)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(imageName) ^
      const DeepCollectionEquality().hash(route);

  @override
  $MemberGridDataV2CopyWith<MemberGridDataV2> get copyWith =>
      _$MemberGridDataV2CopyWithImpl<MemberGridDataV2>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        @required String title,
        @required IconData iconData,
        @required Color iconDecorColorStart,
        @required Color iconDecorColorEnd,
        RoutePage route), {
    @required
        Result v2(@required String title, @required String imageName,
            RoutePage route),
  }) {
    assert($default != null);
    assert(v2 != null);
    return v2(title, imageName, route);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        @required String title,
        @required IconData iconData,
        @required Color iconDecorColorStart,
        @required Color iconDecorColorEnd,
        RoutePage route), {
    Result v2(
        @required String title, @required String imageName, RoutePage route),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (v2 != null) {
      return v2(title, imageName, route);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(MemberGridData value), {
    @required Result v2(MemberGridDataV2 value),
  }) {
    assert($default != null);
    assert(v2 != null);
    return v2(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(MemberGridData value), {
    Result v2(MemberGridDataV2 value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (v2 != null) {
      return v2(this);
    }
    return orElse();
  }
}

abstract class MemberGridDataV2 implements MemberGridDataFreezed {
  const factory MemberGridDataV2(
      {@required String title,
      @required String imageName,
      RoutePage route}) = _$MemberGridDataV2;

  @override
  String get title;
  String get imageName;
  @override
  RoutePage get route;
  @override
  $MemberGridDataV2CopyWith<MemberGridDataV2> get copyWith;
}
