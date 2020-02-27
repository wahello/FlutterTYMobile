import 'package:flutter_ty_mobile/features/home/data/models/marquee_model.dart';
import 'package:meta/meta.dart' show required;

class MarqueeModelList {
  final List<MarqueeModel> marquees;
  final int speed;

  MarqueeModelList({
    @required this.marquees,
    this.speed,
  });

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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['speed'] = this.speed;
    if (this.marquees != null) {
      data['marquee'] = this.marquees.map((v) => v.toJson()).toList();
    }
    return data;
  }

  static MarqueeModelList jsonToMarqueeModelList(
          Map<String, dynamic> jsonMap) =>
      MarqueeModelList.fromJson(jsonMap);
}
