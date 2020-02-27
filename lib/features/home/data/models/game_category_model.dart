import 'package:equatable/equatable.dart';
import 'package:flutter_ty_mobile/core/base/data_operator.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart' show required;
import 'package:to_string/to_string.dart';

part 'game_category_model.g.dart';

@ToString()
@HiveType(typeId: 103)
class GameCategoryModel extends Equatable implements DataOperator {
  @HiveField(0)
  final String ch;
  @HiveField(1)
  final String type;

  GameCategoryModel({
    @required this.ch,
    @required this.type,
  });

  @override
  List<Object> get props => [ch, type];

  String getIconUrl() {
    switch (type) {
      case 'casino':
        return '/images/index/tbico_casino.png';
      case 'slot':
        return '/images/index/tbico_slot.png';
      case 'sport':
        return '/images/index/tbico_sport.png';
      case 'fish':
        return '/images/index/tbico_fish.png';
      case 'lottery':
        return '/images/index/tbico_lottery.png';
      case 'card':
        return '/images/index/tbico_card.png';
      case 'gift':
        return '/images/index/tbico_gift.png';
      default:
        return '';
    }
  }

  String getLabel() {
    switch (type) {
      case 'casino':
        return '真人娱乐';
      case 'slot':
        return '电子游戏';
      case 'sport':
        return '体育竞技';
      case 'fish':
        return '捕鱼电玩';
      case 'lottery':
        return '彩票投注';
      case 'card':
        return '热门棋牌';
      default:
        return ch;
    }
  }

  factory GameCategoryModel.fromJson(Map<String, dynamic> json) {
    return GameCategoryModel(
      ch: json['ch'],
      type: json['type'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ch'] = this.ch;
    data['type'] = this.type;
    return data;
  }

  @override
  String toString() {
    return _$GameCategoryModelToString(this);
  }

  @override
  String operator [](String key) {
    switch (key) {
      case 'id':
        return type.toString();
      default:
        return '';
    }
  }
}
