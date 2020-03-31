import 'package:generic_enum/generic_enum.dart';

class PromoCategory {
  final int id;
  final String category;
  final String label;
  final String iconUrl;

  PromoCategory(this.id, this.category, this.label, this.iconUrl);
}

class PromoCategoryEnum extends GenericEnum<PromoCategory> {
  const PromoCategoryEnum._(PromoCategory value) : super(value);

  static PromoCategoryEnum all = PromoCategoryEnum._(
      PromoCategory(0, 'All', '全部', 'images/index/all.png'));
  static PromoCategoryEnum fish = PromoCategoryEnum._(
      PromoCategory(1, 'fish', '捕鱼', 'images/index/fish.png'));
  static PromoCategoryEnum slot = PromoCategoryEnum._(
      PromoCategory(2, 'slot', '电子', 'images/index/slot.png'));
  static PromoCategoryEnum live = PromoCategoryEnum._(
      PromoCategory(3, 'live', '真人', 'images/index/casino.png'));
  static PromoCategoryEnum sport = PromoCategoryEnum._(
      PromoCategory(4, 'sports', '体育', 'images/index/sport.png'));
  static PromoCategoryEnum lottery = PromoCategoryEnum._(
      PromoCategory(5, 'lotto', '彩票', 'images/index/lottery.png'));
  static PromoCategoryEnum other = PromoCategoryEnum._(
      PromoCategory(6, 'other', '其他', 'images/index/icon-other.png'));
}

extension PromoCategoryExtension on int {
  PromoCategoryEnum get getPromoCategory {
    switch (this) {
      case 0:
        return PromoCategoryEnum.all;
      case 1:
        return PromoCategoryEnum.fish;
      case 2:
        return PromoCategoryEnum.slot;
      case 3:
        return PromoCategoryEnum.live;
      case 4:
        return PromoCategoryEnum.sport;
      case 5:
        return PromoCategoryEnum.lottery;
      case 6:
        return PromoCategoryEnum.other;
      default:
        return PromoCategoryEnum.other;
    }
  }
}
