import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ty_mobile/features/home/data/models/game_category_freezed.dart';
import 'package:flutter_ty_mobile/features/home/data/models/game_platform_freezed.dart';
import 'package:flutter_ty_mobile/features/home/data/models/game_types_freezed.dart';

import '../../../../fixtures/fixture_reader.dart';

final GameCategoryModel categoryModel =
    GameCategoryModel(type: "casino", ch: "真人");

final GamePlatformEntity platformEntity = GamePlatformEntity(
  site: "eg",
  ch: "EG casino",
  category: "casino",
  className: "eg-casino",
);

final GameTypes typeModel = GameTypes(
  categories: [categoryModel],
  platforms: [platformEntity],
);

void main() {
  test('test transform platform to entity', () {
    final map = json.decode(fixture('home/game_types.json'));
    final model = GameTypes.fromJson(map);
    expect(model.categories.length, 7);
    expect(model.categories.first, categoryModel);

    final entity = model.shrink;
    expect(entity.platforms.first, platformEntity);
  });
}
