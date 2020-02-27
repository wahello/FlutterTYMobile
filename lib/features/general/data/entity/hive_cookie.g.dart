// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_cookie.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveCookieEntityAdapter extends TypeAdapter<HiveCookieEntity> {
  @override
  final typeId = 105;

  @override
  HiveCookieEntity read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveCookieEntity(
      account: fields[0] as String,
      cookie: fields[1] as Cookie,
    );
  }

  @override
  void write(BinaryWriter writer, HiveCookieEntity obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.account)
      ..writeByte(1)
      ..write(obj.cookie);
  }
}
