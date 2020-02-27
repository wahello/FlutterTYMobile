import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ty_mobile/features/home/data/models/game_model.dart';
import 'package:flutter_ty_mobile/features/home/domain/entity/entities.dart';

final GameModel gameModel = GameModel(
  id: 4107,
  category: "slot",
  platform: "eg",
  gameId: "candy",
  cname: "糖果世界",
);

final GameEntity gameEntity = GameEntity(
  id: 4107,
  gameUrl: "slot/eg/candy",
  cname: "糖果世界",
);

final String gameJson =
    '{"id": 4107, "category": "slot", "platform": "eg", "gameid": "candy", "cname": "糖果世界"}';

void main() {
  test('test model data to entity data', () {
    final jsonStr = json.encode(gameModel);
    final model = GameModel.fromJson(json.decode(jsonStr));
    expect(model, isA<GameModel>());
    print("test model: ${model.toString()}");

    final entity = GameEntity(
        id: model.id,
        gameUrl: '${model.category}/${model.platform}/${model.gameId}',
        cname: model.cname);
    expect(entity, gameEntity);
    print("test entity: ${entity.toString()}");
  });

  test('test json to entity', () {
    final map = json.decode(gameJson);
    final entity = GameEntity.fromJson(map);
    expect(entity, gameEntity);
  });
}
