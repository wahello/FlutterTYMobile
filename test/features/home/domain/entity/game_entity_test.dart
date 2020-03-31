import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ty_mobile/features/home/data/models/game_data_freezed.dart';

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
    print("json map: $map");
    final entity = GameEntity.fromJson(map);
    expect(entity, gameEntity);
    print("test entity: ${entity.toString()}");
  });

  test('test entity to json', () {
    Map<String, dynamic> test(GameEntity entity) {
      final Map<String, dynamic> data = new Map<String, dynamic>();
      final info = entity.gameUrl.split('/');
      print('split url: $info');
      data['category'] = info[0];
      data['cname'] = entity.cname;
      data['gameid'] = info[2];
      data['id'] = entity.id;
      data['platform'] = info[1];
      print('to json: $data');
      return data;
    }

    print('------------method in test------------');
    final mapJson = json.decode(gameJson);
    print('decoded from json string: $mapJson');
    final mapEntity1 = test(gameEntity);
    print('test mapped: $mapEntity1');
    print('------------method in class------------');
    final mapEntity2 = gameEntity.extJson();
    print('ext mapped: $mapEntity2');
    final mapEntity3 = gameEntity.toJson();
    print('override mapped: $mapEntity3');
    expect(mapEntity2, equals(mapJson));
  });
}
