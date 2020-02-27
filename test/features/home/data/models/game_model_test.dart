import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ty_mobile/features/home/data/models/game_model.dart';
import 'package:flutter_ty_mobile/features/home/domain/entity/entities.dart';
import 'package:flutter_ty_mobile/utils/json_decode_util.dart';

import '../../../../fixtures/fixture_reader.dart';

final GameModel gameModel = GameModel(
    id: 4107, category: "slot", platform: "eg", gameId: "candy", cname: "糖果世界");

final GameEntity gameEntity =
    GameEntity(id: 4107, gameUrl: "slot/eg/candy", cname: "糖果世界");

void main() {
  test('test model data decode', () {
    final map = json.decode(fixture('home/game.json'));
    final model = GameModel.fromJson(map);
    expect(model.id, 4107);
  });

  test('test model data to json', () {
    final map = json.decode(fixture('home/game.json'));
    final jsonMap = gameModel.toJson();
    expect(map, jsonMap);
  });

  test(
    'should transfer json data into model data',
    () async {
      final map = json.decode(fixture('home/game.json'));
      final model = GameModel.fromJson(map);
      expect(model, isA<GameModel>());
      print("test model: ${model.toString()}");
    },
  );

  test('test model list data decode', () {
    List<dynamic> list =
        JsonDecodeUtil.decodeArray(fixture('home/game_array.json'));
    final dataList =
        list.map((model) => GameModel.jsonToGameModel(model)).toList();
    expect(dataList.length, 11);
    expect(dataList.first, gameModel);
  });
}
