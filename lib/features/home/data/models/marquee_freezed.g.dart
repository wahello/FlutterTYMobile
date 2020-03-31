// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marquee_freezed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MarqueeModel _$_$_MarqueeModelFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['created_at', 'updated_at']);
  return _$_MarqueeModel(
    id: json['id'] as int,
    content: json['content'] as String,
    url: json['url'] as String,
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    showDate: json['showDate'] as String,
  );
}

Map<String, dynamic> _$_$_MarqueeModelToJson(_$_MarqueeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'url': instance.url,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'showDate': instance.showDate,
    };

_$_MarqueeModelList _$_$_MarqueeModelListFromJson(Map<String, dynamic> json) {
  return _$_MarqueeModelList(
    marquees: (json['marquees'] as List)
        ?.map((e) =>
            e == null ? null : MarqueeModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    speed: json['speed'] as int,
  );
}

Map<String, dynamic> _$_$_MarqueeModelListToJson(
        _$_MarqueeModelList instance) =>
    <String, dynamic>{
      'marquees': instance.marquees,
      'speed': instance.speed,
    };
