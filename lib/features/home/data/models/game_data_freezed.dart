import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_data_freezed.freezed.dart';
part 'game_data_freezed.g.dart';

@freezed
abstract class GameModel with _$GameModel {
  const factory GameModel({
    @required int id,
    @required String category,
    @required String platform,
    @JsonKey(name: 'gameid') String gameId,
    @required String cname,
  }) = _GameModel;

  factory GameModel.fromJson(Map<String, dynamic> json) =>
      _$GameModelFromJson(json);

  static GameModel jsonToGameModel(Map<String, dynamic> jsonMap) =>
      GameModel.fromJson(jsonMap);
}

extension GameModelExtension on GameModel {
  GameEntity get entity =>
      GameEntity(id: id, cname: cname, gameUrl: '$platform/$category/$gameId');
}

@freezed
abstract class GameEntity with _$GameEntity {
  const factory GameEntity({
    @required int id,
    @required String cname,
    @required String gameUrl,
  }) = _GameEntity;

  @override
  factory GameEntity.fromJson(Map<String, dynamic> json) {
    return GameEntity(
      gameUrl: '${json['platform']}/${json['category']}/${json['gameid']}',
      cname: json['cname'],
      id: json['id'],
    );
  }

  @override
  @Deprecated('Not working, use extJosn() instead')
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    final info = gameUrl.split('/');
    data['category'] = info[0];
    data['cname'] = cname;
    data['gameid'] = info[2];
    data['id'] = id;
    data['platform'] = info[1];
    return data;
  }
}

extension GameEntityExtension on GameEntity {
  Map<String, dynamic> extJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    final info = gameUrl.split('/');
    data['category'] = info[0];
    data['cname'] = cname;
    data['gameid'] = info[2];
    data['id'] = id;
    data['platform'] = info[1];
    return data;
  }

  String get imageUrl => '/images/index/gamelist/$id.jpg?1';
}
