import 'package:flutter_ty_mobile/features/home/domain/entity/entities.dart';
import 'package:meta/meta.dart' show required;

class GameModel extends GameEntity {
  final String category;
  final String platform;
  final String gameId;

  GameModel({
    @required id,
    @required this.category,
    @required this.platform,
    @required this.gameId,
    @required cname,
  }) : super(id: id, gameUrl: '$category/$platform/$gameId', cname: cname);

  @override
  List<Object> get props => [id, category, platform, gameId, cname];

  factory GameModel.fromJson(Map<String, dynamic> json) {
    return GameModel(
      category: json['category'],
      cname: json['cname'],
      gameId: json['gameid'],
      id: json['id'],
      platform: json['platform'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category'] = this.category;
    data['cname'] = this.cname;
    data['gameid'] = this.gameId;
    data['id'] = this.id;
    data['platform'] = this.platform;
    return data;
  }

  @override
  String toString() => props.toString();

  static GameModel jsonToGameModel(Map<String, dynamic> jsonMap) =>
      GameModel.fromJson(jsonMap);
}
