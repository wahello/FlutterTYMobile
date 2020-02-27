import 'package:flutter_ty_mobile/features/home/data/models/game_category_model.dart';
import 'package:flutter_ty_mobile/features/home/data/models/game_platform_model.dart';
import 'package:meta/meta.dart' show required;

class GameTypesModel {
  List<GameCategoryModel> categoryList;
  List<GamePlatformModel> platformList;

  GameTypesModel({
    @required this.categoryList,
    @required this.platformList,
  });

  factory GameTypesModel.fromJson(Map<String, dynamic> json) {
    return GameTypesModel(
      categoryList: json['category'] != null
          ? (json['category'] as List)
              .map((i) => GameCategoryModel.fromJson(i))
              .toList()
          : null,
      platformList: json['list'] != null
          ? (json['list'] as List)
              .map((i) => GamePlatformModel.fromJson(i))
              .toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.categoryList != null) {
      data['category'] = this.categoryList.map((v) => v.toJson()).toList();
    }
    if (this.platformList != null) {
      data['list'] = this.platformList.map((v) => v.toJson()).toList();
    }
    return data;
  }

  static GameTypesModel jsonToGameTypesModel(Map<String, dynamic> jsonMap) =>
      GameTypesModel.fromJson(jsonMap);
}
