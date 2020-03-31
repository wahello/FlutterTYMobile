import 'package:flutter_ty_mobile/core/base/data_operator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'banner_freezed.freezed.dart';
part 'banner_freezed.g.dart';

@freezed
abstract class BannerModel with _$BannerModel {
  const factory BannerModel({
    @required int id,
    @required String title,
    @required String type,
    @required String pic,
    @JsonKey(name: 'pic_mobile', required: true) String picMobile,
    @required bool status,
    @JsonKey(name: 'start_time', required: true) String startTime,
    @JsonKey(name: 'end_time', required: true) String endTime,
    @required int sort,
    @JsonKey(name: 'url_blank', required: true) bool urlBlank,
    @required String url,
    @JsonKey(name: 'mobile_url', required: true) String mobileUrl,
  }) = _BannerModel;

  factory BannerModel.fromJson(Map<String, dynamic> json) =>
      _$BannerModelFromJson(json);

  static BannerModel jsonToBannerModel(Map<String, dynamic> jsonMap) =>
      BannerModel.fromJson(jsonMap);
}

@freezed
abstract class BannerEntity with _$BannerEntity implements DataOperator {
  @HiveType(typeId: 101)
  const factory BannerEntity({
    @HiveField(0) @required int id,
    @HiveField(1) @required String pic,
    @HiveField(2) @required bool noPromo,
    @HiveField(3) @required String promoUrl,
    @HiveField(4) @required int sort,
  }) = _BannerEntity;
}

//@override
//String operator [](String key) {
//return id.toString();
//}

extension BannerModelExtension on BannerModel {
  BannerEntity get entity => BannerEntity(
      id: id,
      pic: picMobile,
      noPromo: urlBlank,
      promoUrl: mobileUrl,
      sort: sort);
}
