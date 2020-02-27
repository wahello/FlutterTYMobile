import 'package:flutter_ty_mobile/features/home/domain/entity/marquee_entity.dart';

class MarqueeModel extends MarqueeEntity {
  final String createdAt;
  final String updatedAt;
  final String showDate;

  MarqueeModel({
    id,
    content,
    url,
    this.createdAt,
    this.updatedAt,
    this.showDate,
  }) : super(
          id: id,
          content: content,
          url: url,
        );

  @override
  List<Object> get props => [
        id,
        content,
        url,
      ];

  factory MarqueeModel.fromJson(Map<String, dynamic> json) {
    return MarqueeModel(
      id: json['id'],
      content: json['content'],
      url: json['url'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      showDate: json['showDate'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['content'] = this.content;
    data['url'] = this.url;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['showDate'] = this.showDate;
    return data;
  }

  @override
  String toString() => props.toString();
}
