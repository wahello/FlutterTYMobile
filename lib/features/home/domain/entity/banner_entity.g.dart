// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BannerEntityAdapter extends TypeAdapter<BannerEntity> {
  @override
  final typeId = 101;

  @override
  BannerEntity read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BannerEntity(
      id: fields[0] as int,
      picMobile: fields[1] as String,
      blankUrl: fields[2] as bool,
      promoUrl: fields[3] as String,
      sort: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, BannerEntity obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.picMobile)
      ..writeByte(2)
      ..write(obj.blankUrl)
      ..writeByte(3)
      ..write(obj.promoUrl)
      ..writeByte(4)
      ..write(obj.sort);
  }
}

// **************************************************************************
// ToStringGenerator
// **************************************************************************

String _$BannerEntityToString(BannerEntity o) {
  return """BannerEntity{id: ${o.id}, picMobile: ${o.picMobile}, blankUrl: ${o.blankUrl}, promoUrl: ${o.promoUrl}, sort: ${o.sort}}""";
}
