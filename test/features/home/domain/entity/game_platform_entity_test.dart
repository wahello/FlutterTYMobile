import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ty_mobile/features/home/data/models/game_platform_freezed.dart';

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

final GamePlatformEntity platformEntity = GamePlatformEntity(
  site: "eg",
  ch: "EG casino",
  category: "casino",
  className: "eg-casino",
);

void main() {
  test('test model data to entity data', () {
    final jsonStr = json.encode(platformModel);
    final model = GamePlatformModel.fromJson(json.decode(jsonStr));
    expect(model, isA<GamePlatformModel>());
    print("test model: ${model.toString()}");

    final entity = GamePlatformEntity(
      className: model.className,
      ch: model.ch,
      category: model.category,
      site: model.site,
    );
    expect(entity, platformEntity);
    print("test entity: ${entity.toString()}");
  });
}
