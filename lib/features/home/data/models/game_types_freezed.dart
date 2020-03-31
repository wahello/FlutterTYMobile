import 'package:freezed_annotation/freezed_annotation.dart';

import 'game_category_freezed.dart' show GameCategoryModel;
import 'game_platform_freezed.dart';

part 'game_types_freezed.freezed.dart';
part 'game_types_freezed.g.dart';

@freezed
abstract class GameTypes with _$GameTypes {
  const factory GameTypes({
    List<GameCategoryModel> categories,
    List<GamePlatformFreezed> platforms,
  }) = _GameTypes;

  @override
  factory GameTypes.fromJson(Map<String, dynamic> json) {
    return GameTypes(
      categories: json['category'] != null
          ? (json['category'] as List)
              .map((i) => GameCategoryModel.fromJson(i))
              .toList()
          : null,
      platforms: json['list'] != null
          ? (json['list'] as List)
              .map((i) => GamePlatformModel.fromJson(i))
              .toList()
          : null,
    );
  }

  @override
  @Deprecated('Not working, use extJosn() instead')
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.categories != null) {
      data['category'] = this.categories.map((v) => v.toJson()).toList();
    }
    if (this.platforms != null) {
      data['list'] = this.platforms.map((v) => v.toJson()).toList();
    }
    return data;
  }

  static GameTypes jsonToGameTypes(Map<String, dynamic> jsonMap) =>
      GameTypes.fromJson(jsonMap);
}

extension GameTypesExtension on GameTypes {
  @late
  Map<String, dynamic> extJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.categories != null) {
      data['category'] = this.categories.map((v) => v.toJson()).toList();
    }
    if (this.platforms != null) {
      data['list'] = this.platforms.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @late
  bool get isValid => categories.isNotEmpty && platforms.isNotEmpty;

  @late
  String get debug =>
      'categories=${categories.length} platforms=${platforms.length}';

  @late
  bool get platformReady => platforms.first is GamePlatformEntity;

  @late
  GameTypes get shrink {
    if (platforms.first is GamePlatformModel) {
      return copyWith(
          platforms: platforms.map((model) {
        if (model is GamePlatformModel)
          return model.entity;
        else
          return model;
      }).toList());
    } else
      return this;
  }
}
