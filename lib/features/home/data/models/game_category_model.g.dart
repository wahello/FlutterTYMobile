// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_category_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GameCategoryModelAdapter extends TypeAdapter<GameCategoryModel> {
  @override
  final typeId = 103;

  @override
  GameCategoryModel read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GameCategoryModel(
      ch: fields[0] as String,
      type: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, GameCategoryModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.ch)
      ..writeByte(1)
      ..write(obj.type);
  }
}

// **************************************************************************
// ToStringGenerator
// **************************************************************************

String _$GameCategoryModelToString(GameCategoryModel o) {
  return """GameCategoryModel{ch: ${o.ch}, type: ${o.type}}""";
}
