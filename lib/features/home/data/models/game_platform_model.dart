import 'package:flutter_ty_mobile/features/home/domain/entity/game_platform_entity.dart';

class GamePlatformModel extends GamePlatformEntity {
  final int cid;
  final String site2;
  final int sort;
  final String status;

  GamePlatformModel({
    className,
    ch,
    this.cid,
    site,
    this.site2,
    this.sort,
    this.status,
    type,
  }) : super(
          className: className,
          ch: ch,
          site: site,
          category: type,
        );

  @override
  List<Object> get props =>
      [className, ch, cid, site, site2, sort, status, category];

  factory GamePlatformModel.fromJson(Map<String, dynamic> json) {
    return GamePlatformModel(
      className: json['class'],
      ch: json['ch'],
      cid: json['cid'],
      site: json['site'],
      site2: json['site2'],
      sort: json['sort'],
      status: json['status'],
      type: json['type'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['class'] = this.className;
    data['ch'] = this.ch;
    data['cid'] = this.cid;
    data['site'] = this.site;
    data['site2'] = this.site2;
    data['sort'] = this.sort;
    data['status'] = this.status;
    data['type'] = this.category;
    return data;
  }

  @override
  String toString() => props.toString();
}
