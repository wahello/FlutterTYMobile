import 'package:flutter_ty_mobile/core/base/data_operator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'marquee_freezed.freezed.dart';
part 'marquee_freezed.g.dart';

@freezed
abstract class MarqueeModel with _$MarqueeModel {
  const factory MarqueeModel({
    @required int id,
    @required String content,
    @required String url,
    @JsonKey(name: 'created_at', required: true) String createdAt,
    @JsonKey(name: 'updated_at', required: true) String updatedAt,
    @required String showDate,
  }) = _MarqueeModel;

  factory MarqueeModel.fromJson(Map<String, dynamic> json) =>
      _$MarqueeModelFromJson(json);

  static MarqueeModel jsonToMarqueeModel(Map<String, dynamic> jsonMap) =>
      MarqueeModel.fromJson(jsonMap);
}

@freezed
abstract class MarqueeEntity with _$MarqueeEntity implements DataOperator {
//  @HiveType(typeId: 102)
  const factory MarqueeEntity({
//    @HiveField(0)
    @required int id,
//    @HiveField(1)
    @required String content,
//    @HiveField(2)
    @required String url,
  }) = _MarqueeEntity;
}

//@override
//String operator [](String key) {
//return id.toString();
//}

@freezed
abstract class MarqueeModelList with _$MarqueeModelList {
  const factory MarqueeModelList({
    @required List<MarqueeModel> marquees,
    @required int speed,
  }) = _MarqueeModelList;

  @override
  factory MarqueeModelList.fromJson(Map<String, dynamic> json) {
    return MarqueeModelList(
      marquees: json['marquee'] != null
          ? (json['marquee'] as List)
              .map((i) => MarqueeModel.fromJson(i))
              .toList()
          : null,
      speed: json['speed'],
    );
  }

  @override
  @Deprecated('Not working, use extJosn() instead')
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.marquees != null) {
      data['marquee'] = this.marquees.map((v) => v.toJson()).toList();
    }
    data['speed'] = this.speed;
    return data;
  }

  static MarqueeModelList jsonToMarqueeModelList(
          Map<String, dynamic> jsonMap) =>
      MarqueeModelList.fromJson(jsonMap);
}

extension MarqueeModelExtension on MarqueeModel {
  MarqueeEntity get entity => MarqueeEntity(id: id, content: content, url: url);
}

extension MarqueeModelListExtension on MarqueeModelList {
  @late
  Map<String, dynamic> extJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.marquees != null) {
      data['marquee'] = this.marquees.map((v) => v.toJson()).toList();
    }
    data['speed'] = this.speed;
    return data;
  }
}

//class MarqueeEntityAdapter extends TypeAdapter<MarqueeEntity> {
//  @override
//  final typeId = 102;
//
//  @override
//  MarqueeEntity read(BinaryReader reader) {
//    var numOfFields = reader.readByte();
//    var fields = <int, dynamic>{
//      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
//    };
//    return MarqueeEntity(
//      id: fields[0] as int,
//      content: fields[1] as String,
//      url: fields[2] as String,
//    );
//  }
//
//  @override
//  void write(BinaryWriter writer, MarqueeEntity obj) {
//    writer
//      ..writeByte(3)
//      ..writeByte(0)
//      ..write(obj.id)
//      ..writeByte(1)
//      ..write(obj.content)
//      ..writeByte(2)
//      ..write(obj.url);
//  }
//}
