// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_freezed.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BannerEntityAdapter extends TypeAdapter<_$_BannerEntity> {
  @override
  final typeId = 101;

  @override
  _$_BannerEntity read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_BannerEntity(
      id: fields[0] as int,
      pic: fields[1] as String,
      noPromo: fields[2] as bool,
      promoUrl: fields[3] as String,
      sort: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$_BannerEntity obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.pic)
      ..writeByte(2)
      ..write(obj.noPromo)
      ..writeByte(3)
      ..write(obj.promoUrl)
      ..writeByte(4)
      ..write(obj.sort);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BannerModel _$_$_BannerModelFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const [
    'pic_mobile',
    'start_time',
    'end_time',
    'url_blank',
    'mobile_url'
  ]);
  return _$_BannerModel(
    id: json['id'] as int,
    title: json['title'] as String,
    type: json['type'] as String,
    pic: json['pic'] as String,
    picMobile: json['pic_mobile'] as String,
    status: json['status'] as bool,
    startTime: json['start_time'] as String,
    endTime: json['end_time'] as String,
    sort: json['sort'] as int,
    urlBlank: json['url_blank'] as bool,
    url: json['url'] as String,
    mobileUrl: json['mobile_url'] as String,
  );
}

Map<String, dynamic> _$_$_BannerModelToJson(_$_BannerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'type': instance.type,
      'pic': instance.pic,
      'pic_mobile': instance.picMobile,
      'status': instance.status,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'sort': instance.sort,
      'url_blank': instance.urlBlank,
      'url': instance.url,
      'mobile_url': instance.mobileUrl,
    };
