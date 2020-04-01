import 'package:flutter_ty_mobile/core/base/data_operator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'game_platform_freezed.freezed.dart';
part 'game_platform_freezed.g.dart';

@freezed
abstract class GamePlatformFreezed
    with _$GamePlatformFreezed
    implements DataOperator {
  @HiveType(typeId: 104)
  const factory GamePlatformFreezed.entity({
    @HiveField(0) @JsonKey(name: 'class', required: true) String className,
    @HiveField(1) @required String ch,
    @HiveField(2) @required String site,
    @HiveField(3) @JsonKey(name: 'type', required: true) String category,
  }) = GamePlatformEntity;

  const factory GamePlatformFreezed.model({
    @JsonKey(name: 'class', required: true) String className,
    @required String ch,
    @required int cid,
    @required String site,
    @required String site2,
    @JsonKey(name: 'type', required: true) String category,
    @required int sort,
    @required String status,
  }) = GamePlatformModel;

  factory GamePlatformFreezed.fromJson(Map<String, dynamic> json) =>
      _$GamePlatformFreezedFromJson(json);

  static GamePlatformEntity jsonToGamePlatformEntity(
      Map<String, dynamic> jsonMap) {
    jsonMap['runtimeType'] = 'entity';
    return _$GamePlatformFreezedFromJson(jsonMap);
  }

  static GamePlatformModel jsonToGamePlatformModel(
      Map<String, dynamic> jsonMap) {
    jsonMap['runtimeType'] = 'model';
    return _$GamePlatformFreezedFromJson(jsonMap);
  }
}

//@override
//String operator [](String key) {
//  return className.toString();
//}

extension GamePlatformModelExtension on GamePlatformModel {
  GamePlatformEntity get entity => GamePlatformEntity(
        className: className,
        ch: ch,
        site: site,
        category: category,
      );
}

extension GamePlatformEntityExtension on GamePlatformEntity {
  bool get isGameHall => ['casino', 'sport', 'lottery'].contains(category);
  String get iconUrl => '/images/index/logo/${site.toUpperCase()}.png';
  String get imageUrl => '/images/index/nav_${site}_$category.png';
  String get gameUrl => '$site/$category/0';
  String get label {
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
}
