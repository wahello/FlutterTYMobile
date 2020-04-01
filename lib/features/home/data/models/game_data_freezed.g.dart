// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_data_freezed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GameModel _$_$_GameModelFromJson(Map<String, dynamic> json) {
  return _$_GameModel(
    id: json['id'] as int,
    category: json['category'] as String,
    platform: json['platform'] as String,
    gameId: json['gameid'] as String,
    cname: json['cname'] as String,
  );
}

Map<String, dynamic> _$_$_GameModelToJson(_$_GameModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'platform': instance.platform,
      'gameid': instance.gameId,
      'cname': instance.cname,
    };

_$_GameEntity _$_$_GameEntityFromJson(Map<String, dynamic> json) {
  return _$_GameEntity(
    id: json['id'] as int,
    cname: json['cname'] as String,
    gameUrl: json['gameUrl'] as String,
  );
}

Map<String, dynamic> _$_$_GameEntityToJson(_$_GameEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cname': instance.cname,
      'gameUrl': instance.gameUrl,
    };
