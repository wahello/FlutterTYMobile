// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'game_data_freezed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
GameModel _$GameModelFromJson(Map<String, dynamic> json) {
  return _GameModel.fromJson(json);
}

class _$GameModelTearOff {
  const _$GameModelTearOff();

  _GameModel call(
      {@required int id,
      @required String category,
      @required String platform,
      @JsonKey(name: 'gameid') String gameId,
      @required String cname}) {
    return _GameModel(
      id: id,
      category: category,
      platform: platform,
      gameId: gameId,
      cname: cname,
    );
  }
}

// ignore: unused_element
const $GameModel = _$GameModelTearOff();

mixin _$GameModel {
  int get id;
  String get category;
  String get platform;
  @JsonKey(name: 'gameid')
  String get gameId;
  String get cname;

  Map<String, dynamic> toJson();
  $GameModelCopyWith<GameModel> get copyWith;
}

abstract class $GameModelCopyWith<$Res> {
  factory $GameModelCopyWith(GameModel value, $Res Function(GameModel) then) =
      _$GameModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String category,
      String platform,
      @JsonKey(name: 'gameid') String gameId,
      String cname});
}

class _$GameModelCopyWithImpl<$Res> implements $GameModelCopyWith<$Res> {
  _$GameModelCopyWithImpl(this._value, this._then);

  final GameModel _value;
  // ignore: unused_field
  final $Res Function(GameModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object category = freezed,
    Object platform = freezed,
    Object gameId = freezed,
    Object cname = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      category: category == freezed ? _value.category : category as String,
      platform: platform == freezed ? _value.platform : platform as String,
      gameId: gameId == freezed ? _value.gameId : gameId as String,
      cname: cname == freezed ? _value.cname : cname as String,
    ));
  }
}

abstract class _$GameModelCopyWith<$Res> implements $GameModelCopyWith<$Res> {
  factory _$GameModelCopyWith(
          _GameModel value, $Res Function(_GameModel) then) =
      __$GameModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String category,
      String platform,
      @JsonKey(name: 'gameid') String gameId,
      String cname});
}

class __$GameModelCopyWithImpl<$Res> extends _$GameModelCopyWithImpl<$Res>
    implements _$GameModelCopyWith<$Res> {
  __$GameModelCopyWithImpl(_GameModel _value, $Res Function(_GameModel) _then)
      : super(_value, (v) => _then(v as _GameModel));

  @override
  _GameModel get _value => super._value as _GameModel;

  @override
  $Res call({
    Object id = freezed,
    Object category = freezed,
    Object platform = freezed,
    Object gameId = freezed,
    Object cname = freezed,
  }) {
    return _then(_GameModel(
      id: id == freezed ? _value.id : id as int,
      category: category == freezed ? _value.category : category as String,
      platform: platform == freezed ? _value.platform : platform as String,
      gameId: gameId == freezed ? _value.gameId : gameId as String,
      cname: cname == freezed ? _value.cname : cname as String,
    ));
  }
}

@JsonSerializable()
class _$_GameModel implements _GameModel {
  const _$_GameModel(
      {@required this.id,
      @required this.category,
      @required this.platform,
      @JsonKey(name: 'gameid') this.gameId,
      @required this.cname})
      : assert(id != null),
        assert(category != null),
        assert(platform != null),
        assert(cname != null);

  factory _$_GameModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GameModelFromJson(json);

  @override
  final int id;
  @override
  final String category;
  @override
  final String platform;
  @override
  @JsonKey(name: 'gameid')
  final String gameId;
  @override
  final String cname;

  @override
  String toString() {
    return 'GameModel(id: $id, category: $category, platform: $platform, gameId: $gameId, cname: $cname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GameModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.gameId, gameId) ||
                const DeepCollectionEquality().equals(other.gameId, gameId)) &&
            (identical(other.cname, cname) ||
                const DeepCollectionEquality().equals(other.cname, cname)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(gameId) ^
      const DeepCollectionEquality().hash(cname);

  @override
  _$GameModelCopyWith<_GameModel> get copyWith =>
      __$GameModelCopyWithImpl<_GameModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GameModelToJson(this);
  }
}

abstract class _GameModel implements GameModel {
  const factory _GameModel(
      {@required int id,
      @required String category,
      @required String platform,
      @JsonKey(name: 'gameid') String gameId,
      @required String cname}) = _$_GameModel;

  factory _GameModel.fromJson(Map<String, dynamic> json) =
      _$_GameModel.fromJson;

  @override
  int get id;
  @override
  String get category;
  @override
  String get platform;
  @override
  @JsonKey(name: 'gameid')
  String get gameId;
  @override
  String get cname;
  @override
  _$GameModelCopyWith<_GameModel> get copyWith;
}

GameEntity _$GameEntityFromJson(Map<String, dynamic> json) {
  return _GameEntity.fromJson(json);
}

class _$GameEntityTearOff {
  const _$GameEntityTearOff();

  _GameEntity call(
      {@required int id, @required String cname, @required String gameUrl}) {
    return _GameEntity(
      id: id,
      cname: cname,
      gameUrl: gameUrl,
    );
  }
}

// ignore: unused_element
const $GameEntity = _$GameEntityTearOff();

mixin _$GameEntity {
  int get id;
  String get cname;
  String get gameUrl;

  Map<String, dynamic> toJson();
  $GameEntityCopyWith<GameEntity> get copyWith;
}

abstract class $GameEntityCopyWith<$Res> {
  factory $GameEntityCopyWith(
          GameEntity value, $Res Function(GameEntity) then) =
      _$GameEntityCopyWithImpl<$Res>;
  $Res call({int id, String cname, String gameUrl});
}

class _$GameEntityCopyWithImpl<$Res> implements $GameEntityCopyWith<$Res> {
  _$GameEntityCopyWithImpl(this._value, this._then);

  final GameEntity _value;
  // ignore: unused_field
  final $Res Function(GameEntity) _then;

  @override
  $Res call({
    Object id = freezed,
    Object cname = freezed,
    Object gameUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      cname: cname == freezed ? _value.cname : cname as String,
      gameUrl: gameUrl == freezed ? _value.gameUrl : gameUrl as String,
    ));
  }
}

abstract class _$GameEntityCopyWith<$Res> implements $GameEntityCopyWith<$Res> {
  factory _$GameEntityCopyWith(
          _GameEntity value, $Res Function(_GameEntity) then) =
      __$GameEntityCopyWithImpl<$Res>;
  @override
  $Res call({int id, String cname, String gameUrl});
}

class __$GameEntityCopyWithImpl<$Res> extends _$GameEntityCopyWithImpl<$Res>
    implements _$GameEntityCopyWith<$Res> {
  __$GameEntityCopyWithImpl(
      _GameEntity _value, $Res Function(_GameEntity) _then)
      : super(_value, (v) => _then(v as _GameEntity));

  @override
  _GameEntity get _value => super._value as _GameEntity;

  @override
  $Res call({
    Object id = freezed,
    Object cname = freezed,
    Object gameUrl = freezed,
  }) {
    return _then(_GameEntity(
      id: id == freezed ? _value.id : id as int,
      cname: cname == freezed ? _value.cname : cname as String,
      gameUrl: gameUrl == freezed ? _value.gameUrl : gameUrl as String,
    ));
  }
}

@JsonSerializable()
class _$_GameEntity implements _GameEntity {
  const _$_GameEntity(
      {@required this.id, @required this.cname, @required this.gameUrl})
      : assert(id != null),
        assert(cname != null),
        assert(gameUrl != null);

  factory _$_GameEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_GameEntityFromJson(json);

  @override
  final int id;
  @override
  final String cname;
  @override
  final String gameUrl;

  @override
  String toString() {
    return 'GameEntity(id: $id, cname: $cname, gameUrl: $gameUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GameEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.cname, cname) ||
                const DeepCollectionEquality().equals(other.cname, cname)) &&
            (identical(other.gameUrl, gameUrl) ||
                const DeepCollectionEquality().equals(other.gameUrl, gameUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(cname) ^
      const DeepCollectionEquality().hash(gameUrl);

  @override
  _$GameEntityCopyWith<_GameEntity> get copyWith =>
      __$GameEntityCopyWithImpl<_GameEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GameEntityToJson(this);
  }
}

abstract class _GameEntity implements GameEntity {
  const factory _GameEntity(
      {@required int id,
      @required String cname,
      @required String gameUrl}) = _$_GameEntity;

  factory _GameEntity.fromJson(Map<String, dynamic> json) =
      _$_GameEntity.fromJson;

  @override
  int get id;
  @override
  String get cname;
  @override
  String get gameUrl;
  @override
  _$GameEntityCopyWith<_GameEntity> get copyWith;
}
