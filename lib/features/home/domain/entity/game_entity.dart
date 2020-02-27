import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart' show required;
import 'package:to_string/to_string.dart';

part 'game_entity.g.dart';

@ToString()
class GameEntity extends Equatable {
  final int id;
  final String gameUrl;
  final String cname;

  GameEntity({
    @required this.id,
    @required this.gameUrl,
    @required this.cname,
  });

  @override
  List<Object> get props => [id, gameUrl, cname];

  String get imageUrl => '/images/index/gamelist/$id.jpg?1';

  factory GameEntity.fromJson(Map<String, dynamic> json) {
    return GameEntity(
      gameUrl: '${json['category']}/${json['platform']}/${json['gameid']}',
      cname: json['cname'],
      id: json['id'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    final info = gameUrl.split('/');
    data['category'] = info[0];
    data['cname'] = this.cname;
    data['gameid'] = info[2];
    data['id'] = this.id;
    data['platform'] = info[1];
    return data;
  }

  @override
  String toString() {
    return _$GameEntityToString(this);
  }
}
