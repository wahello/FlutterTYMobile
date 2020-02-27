import 'package:equatable/equatable.dart';
import 'package:flutter_ty_mobile/core/base/data_operator.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart' show required;
import 'package:to_string/to_string.dart';

part 'game_platform_entity.g.dart';

@ToString()
@HiveType(typeId: 104)
class GamePlatformEntity extends Equatable implements DataOperator {
  @HiveField(0)
  final String className;
  @HiveField(1)
  final String ch;
  @HiveField(2)
  final String site;
  @HiveField(3)
  final String category;

  GamePlatformEntity({
    @required this.className,
    @required this.ch,
    @required this.site,
    @required this.category,
  });

  @override
  List<Object> get props => [className, ch, site, category];

  String get iconUrl => '/images/index/logo/${site.toUpperCase()}.png';

  String get imageUrl => '/images/index/nav_${site}_$category.png';

  String get gameUrl => '/$site/$category/0';

  String getLabel() {
    switch (category) {
      case 'casino':
        return '${site.toUpperCase()}真人';
      case 'slot':
        return '${site.toUpperCase()}电子';
      case 'sport':
        return '${site.toUpperCase()}体育';
      case 'fish':
        return '${site.toUpperCase()}捕鱼';
      case 'lottery':
        return '${site.toUpperCase()}彩票';
      case 'card':
        return '${site.toUpperCase()}热门';
      default:
        return ch;
    }
  }

  bool get hasGames =>
      category != 'casino' && category != 'sport' && category != 'lottery';

  factory GamePlatformEntity.fromJson(Map<String, dynamic> json) {
    return GamePlatformEntity(
      className: json['class'],
      ch: json['ch'],
      site: json['site'],
      category: json['type'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['class'] = this.className;
    data['ch'] = this.ch;
    data['site'] = this.site;
    data['type'] = this.category;
    return data;
  }

  @override
  String toString() {
    return _$GamePlatformEntityToString(this);
  }

  @override
  String operator [](String key) {
    switch (key) {
      case 'id':
        return className.toString();
      default:
        return '';
    }
  }
}
