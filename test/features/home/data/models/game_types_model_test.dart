import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ty_mobile/features/home/data/models/game_category_model.dart';
import 'package:flutter_ty_mobile/features/home/data/models/game_platform_model.dart';
import 'package:flutter_ty_mobile/features/home/data/models/game_types_model.dart';

import '../../../../fixtures/fixture_reader.dart';

final GameCategoryModel categoryModel =
    GameCategoryModel(type: "casino", ch: "真人");

final GamePlatformModel platformModel = GamePlatformModel(
  site: "eg",
  site2: "EG",
  ch: "EG casino",
  type: "casino",
  cid: 1,
  status: "1",
  sort: 1,
  className: "eg-casino",
);

final GameTypesModel typeModel = GameTypesModel(
  categoryList: [categoryModel],
  platformList: [platformModel],
);

void main() {
  test('test model list data decode', () {
    final map = json.decode(fixture('home/game_types.json'));
    final model = GameTypesModel.fromJson(map);
    expect(model.categoryList.length, 7);
    expect(model.categoryList.first, categoryModel);
    expect(model.platformList.first, platformModel);
  });
}
