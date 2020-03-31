// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_category_freezed.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GameCategoryModelAdapter extends TypeAdapter<_$_GameCategoryModel> {
  @override
  final typeId = 103;

  @override
  _$_GameCategoryModel read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_GameCategoryModel(
      ch: fields[0] as String,
      type: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_GameCategoryModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.ch)
      ..writeByte(1)
      ..write(obj.type);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GameCategoryModel _$_$_GameCategoryModelFromJson(Map<String, dynamic> json) {
  return _$_GameCategoryModel(
    ch: json['ch'] as String,
    type: json['type'] as String,
  );
}

Map<String, dynamic> _$_$_GameCategoryModelToJson(
        _$_GameCategoryModel instance) =>
    <String, dynamic>{
      'ch': instance.ch,
      'type': instance.type,
    };
