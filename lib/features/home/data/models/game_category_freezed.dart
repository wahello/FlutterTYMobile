import 'package:flutter_ty_mobile/core/base/data_operator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:generic_enum/generic_enum.dart';
import 'package:hive/hive.dart';

part 'game_category_freezed.freezed.dart';
part 'game_category_freezed.g.dart';

@freezed
abstract class GameCategoryModel
    with _$GameCategoryModel
    implements DataOperator {
  @HiveType(typeId: 103)
  const factory GameCategoryModel({
    @HiveField(0) @required String ch,
    @HiveField(1) @required String type,
  }) = _GameCategoryModel;

  factory GameCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$GameCategoryModelFromJson(json);
}

//  @override
//  String operator [](String key) {
//    return type.toString();
//  }

extension GameCategoryModelExtension on GameCategoryModel {
  String get iconUrl => _infoMap[type].iconUrl ?? '';
  String get label => _infoMap[type].label ?? '?';
}

class GameCategoryInfo {
  final String iconUrl;
  final String label;

  GameCategoryInfo(this.iconUrl, this.label);
}

class GameCategory extends GenericEnum<GameCategoryInfo> {
  const GameCategory._(GameCategoryInfo info) : super(info);
  static GameCategory casino =
      GameCategory._(GameCategoryInfo('images/index/tbico_casino.png', '真人娱乐'));
  static GameCategory slot =
      GameCategory._(GameCategoryInfo('images/index/tbico_slot.png', '电子游戏'));
  static GameCategory sport =
      GameCategory._(GameCategoryInfo('images/index/tbico_sport.png', '体育竞技'));
  static GameCategory fish =
      GameCategory._(GameCategoryInfo('images/index/tbico_fish.png', '捕鱼电玩'));
  static GameCategory lottery = GameCategory._(
      GameCategoryInfo('images/index/tbico_lottery.png', '彩票投注'));
  static GameCategory card =
      GameCategory._(GameCategoryInfo('images/index/tbico_card.png', '热门棋牌'));
  static GameCategory gift =
      GameCategory._(GameCategoryInfo('images/index/tbico_gift.png', '礼物'));
  static GameCategory movie =
      GameCategory._(GameCategoryInfo('images/index/tbico_movie.png', '影城'));
}

Map<String, GameCategoryInfo> _infoMap = {
  'casino': GameCategory.casino.value,
  'slot': GameCategory.slot.value,
  'sport': GameCategory.sport.value,
  'fish': GameCategory.fish.value,
  'lottery': GameCategory.lottery.value,
  'card': GameCategory.card.value,
  'gift': GameCategory.gift.value,
  'movie': GameCategory.movie.value,
};
