// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_platform_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GamePlatformEntityAdapter extends TypeAdapter<GamePlatformEntity> {
  @override
  final typeId = 104;

  @override
  GamePlatformEntity read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GamePlatformEntity(
      className: fields[0] as String,
      ch: fields[1] as String,
      site: fields[2] as String,
      category: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, GamePlatformEntity obj) {
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
// ToStringGenerator
// **************************************************************************

String _$GamePlatformEntityToString(GamePlatformEntity o) {
  return """GamePlatformEntity{className: ${o.className}, ch: ${o.ch}, site: ${o.site}, category: ${o.category}}""";
}
