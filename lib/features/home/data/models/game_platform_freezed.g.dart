// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_platform_freezed.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GamePlatformEntityAdapter extends TypeAdapter<_$GamePlatformEntity> {
  @override
  final typeId = 104;

  @override
  _$GamePlatformEntity read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$GamePlatformEntity(
      className: fields[0] as String,
      ch: fields[1] as String,
      site: fields[2] as String,
      category: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$GamePlatformEntity obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.className)
      ..writeByte(1)
      ..write(obj.ch)
      ..writeByte(2)
      ..write(obj.site)
      ..writeByte(3)
      ..write(obj.category);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GamePlatformEntity _$_$GamePlatformEntityFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['class', 'type']);
  return _$GamePlatformEntity(
    className: json['class'] as String,
    ch: json['ch'] as String,
    site: json['site'] as String,
    category: json['type'] as String,
  );
}

Map<String, dynamic> _$_$GamePlatformEntityToJson(
        _$GamePlatformEntity instance) =>
    <String, dynamic>{
      'class': instance.className,
      'ch': instance.ch,
      'site': instance.site,
      'type': instance.category,
    };

_$GamePlatformModel _$_$GamePlatformModelFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['class', 'type']);
  return _$GamePlatformModel(
    className: json['class'] as String,
    ch: json['ch'] as String,
    cid: json['cid'] as int,
    site: json['site'] as String,
    site2: json['site2'] as String,
    category: json['type'] as String,
    sort: json['sort'] as int,
    status: json['status'] as String,
  );
}

Map<String, dynamic> _$_$GamePlatformModelToJson(
        _$GamePlatformModel instance) =>
    <String, dynamic>{
      'class': instance.className,
      'ch': instance.ch,
      'cid': instance.cid,
      'site': instance.site,
      'site2': instance.site2,
      'type': instance.category,
      'sort': instance.sort,
      'status': instance.status,
    };
