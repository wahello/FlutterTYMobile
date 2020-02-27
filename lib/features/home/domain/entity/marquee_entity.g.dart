// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marquee_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MarqueeEntityAdapter extends TypeAdapter<MarqueeEntity> {
  @override
  final typeId = 102;

  @override
  MarqueeEntity read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MarqueeEntity(
      id: fields[0] as int,
      content: fields[1] as String,
      url: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, MarqueeEntity obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.content)
      ..writeByte(2)
      ..write(obj.url);
  }
}

// **************************************************************************
// ToStringGenerator
// **************************************************************************

String _$MarqueeEntityToString(MarqueeEntity o) {
  return """MarqueeEntity{id: ${o.id}, content: ${o.content}, url: ${o.url}}""";
}
