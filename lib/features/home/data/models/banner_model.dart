import 'package:flutter_ty_mobile/features/home/domain/entity/banner_entity.dart';

class BannerModel extends BannerEntity {
  final String endTime;
  final String pic;
  final String startTime;
  final bool status;
  final String title;
  final String type;
  final String url;

  BannerModel({
    id,
    this.title,
    this.type,
    this.pic,
    picMobile,
    this.status,
    this.startTime,
    this.endTime,
    sort,
    urlBlank,
    this.url,
    mobileUrl,
  }) : super(
            id: id,
            picMobile: picMobile,
            blankUrl: urlBlank,
            promoUrl: mobileUrl,
            sort: sort);

  @override
  List<Object> get props => [
        id,
        title,
        type,
        pic,
        picMobile,
        status,
        startTime,
        endTime,
        sort,
        blankUrl,
        url,
        promoUrl
      ];

  factory BannerModel.fromJson(Map<String, dynamic> json) {
    return BannerModel(
      endTime: json['end_time'],
      id: json['id'],
      mobileUrl: json['mobile_url'],
      pic: json['pic'],
      picMobile: json['pic_mobile'],
      sort: json['sort'],
      startTime: json['start_time'],
      status: json['status'],
      title: json['title'],
      type: json['type'],
      url: json['url'],
      urlBlank: json['url_blank'],
      // The 'num' type can be both a 'double' and an 'int'
//      number: (json['number'] as num).toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['end_time'] = this.endTime;
    data['id'] = this.id;
    data['mobile_url'] = this.promoUrl;
    data['pic'] = this.pic;
    data['pic_mobile'] = this.picMobile;
    data['sort'] = this.sort;
    data['start_time'] = this.startTime;
    data['status'] = this.status;
    data['title'] = this.title;
    data['type'] = this.type;
    data['url'] = this.url;
    data['url_blank'] = this.blankUrl;
    return data;
  }

  @override
  String toString() => props.toString();

  static BannerModel jsonToBannerModel(Map<String, dynamic> jsonMap) =>
      BannerModel.fromJson(jsonMap);
}
