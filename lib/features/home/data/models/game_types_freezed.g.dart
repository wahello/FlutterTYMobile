// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_types_freezed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GameTypes _$_$_GameTypesFromJson(Map<String, dynamic> json) {
  return _$_GameTypes(
    categories: (json['categories'] as List)
        ?.map((e) => e == null
            ? null
            : GameCategoryModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    platforms: (json['platforms'] as List)
        ?.map((e) => e == null
            ? null
            : GamePlatformFreezed.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_GameTypesToJson(_$_GameTypes instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'platforms': instance.platforms,
    };
