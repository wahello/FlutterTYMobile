import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ty_mobile/features/home/data/models/game_category_freezed.dart';
import 'package:flutter_ty_mobile/features/home/data/models/game_platform_freezed.dart';
import 'package:flutter_ty_mobile/features/home/data/models/game_types_freezed.dart';

import '../../../../fixtures/fixture_reader.dart';

final GameCategoryModel categoryModel =
    GameCategoryModel(type: "casino", ch: "真人");

final GamePlatformModel platformModel = GamePlatformModel(
  site: "eg",
  site2: "EG",
  ch: "EG casino",
  category: "casino",
  cid: 1,
  status: "1",
  sort: 1,
  className: "eg-casino",
);

final GameTypes typeModel = GameTypes(
  categories: [categoryModel],
  platforms: [platformModel],
);

void main() {
  test('test model list data decode', () {
    final map = json.decode(fixture('home/game_types.json'));
    final model = GameTypes.fromJson(map);
    expect(model.categories.length, 7);
    expect(model.categories.first, categoryModel);
    expect(model.platforms.first, platformModel);
  });
}
