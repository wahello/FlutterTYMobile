// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'game_types_freezed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
GameTypes _$GameTypesFromJson(Map<String, dynamic> json) {
  return _GameTypes.fromJson(json);
}

class _$GameTypesTearOff {
  const _$GameTypesTearOff();

  _GameTypes call(
      {List<GameCategoryModel> categories,
      List<GamePlatformFreezed> platforms}) {
    return _GameTypes(
      categories: categories,
      platforms: platforms,
    );
  }
}

// ignore: unused_element
const $GameTypes = _$GameTypesTearOff();

mixin _$GameTypes {
  List<GameCategoryModel> get categories;
  List<GamePlatformFreezed> get platforms;

  Map<String, dynamic> toJson();
  $GameTypesCopyWith<GameTypes> get copyWith;
}

abstract class $GameTypesCopyWith<$Res> {
  factory $GameTypesCopyWith(GameTypes value, $Res Function(GameTypes) then) =
      _$GameTypesCopyWithImpl<$Res>;
  $Res call(
      {List<GameCategoryModel> categories,
      List<GamePlatformFreezed> platforms});
}

class _$GameTypesCopyWithImpl<$Res> implements $GameTypesCopyWith<$Res> {
  _$GameTypesCopyWithImpl(this._value, this._then);

  final GameTypes _value;
  // ignore: unused_field
  final $Res Function(GameTypes) _then;

  @override
  $Res call({
    Object categories = freezed,
    Object platforms = freezed,
  }) {
    return _then(_value.copyWith(
      categories: categories == freezed
          ? _value.categories
          : categories as List<GameCategoryModel>,
      platforms: platforms == freezed
          ? _value.platforms
          : platforms as List<GamePlatformFreezed>,
    ));
  }
}

abstract class _$GameTypesCopyWith<$Res> implements $GameTypesCopyWith<$Res> {
  factory _$GameTypesCopyWith(
          _GameTypes value, $Res Function(_GameTypes) then) =
      __$GameTypesCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<GameCategoryModel> categories,
      List<GamePlatformFreezed> platforms});
}

class __$GameTypesCopyWithImpl<$Res> extends _$GameTypesCopyWithImpl<$Res>
    implements _$GameTypesCopyWith<$Res> {
  __$GameTypesCopyWithImpl(_GameTypes _value, $Res Function(_GameTypes) _then)
      : super(_value, (v) => _then(v as _GameTypes));

  @override
  _GameTypes get _value => super._value as _GameTypes;

  @override
  $Res call({
    Object categories = freezed,
    Object platforms = freezed,
  }) {
    return _then(_GameTypes(
      categories: categories == freezed
          ? _value.categories
          : categories as List<GameCategoryModel>,
      platforms: platforms == freezed
          ? _value.platforms
          : platforms as List<GamePlatformFreezed>,
    ));
  }
}

@JsonSerializable()
class _$_GameTypes implements _GameTypes {
  const _$_GameTypes({this.categories, this.platforms});

  factory _$_GameTypes.fromJson(Map<String, dynamic> json) =>
      _$_$_GameTypesFromJson(json);

  @override
  final List<GameCategoryModel> categories;
  @override
  final List<GamePlatformFreezed> platforms;

  @override
  String toString() {
    return 'GameTypes(categories: $categories, platforms: $platforms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GameTypes &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.platforms, platforms) ||
                const DeepCollectionEquality()
                    .equals(other.platforms, platforms)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(platforms);

  @override
  _$GameTypesCopyWith<_GameTypes> get copyWith =>
      __$GameTypesCopyWithImpl<_GameTypes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GameTypesToJson(this);
  }
}

abstract class _GameTypes implements GameTypes {
  const factory _GameTypes(
      {List<GameCategoryModel> categories,
      List<GamePlatformFreezed> platforms}) = _$_GameTypes;

  factory _GameTypes.fromJson(Map<String, dynamic> json) =
      _$_GameTypes.fromJson;

  @override
  List<GameCategoryModel> get categories;
  @override
  List<GamePlatformFreezed> get platforms;
  @override
  _$GameTypesCopyWith<_GameTypes> get copyWith;
}
