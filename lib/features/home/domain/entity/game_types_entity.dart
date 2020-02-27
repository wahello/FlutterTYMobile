import 'package:equatable/equatable.dart';
import 'package:flutter_ty_mobile/features/home/data/models/game_category_model.dart';
import 'package:flutter_ty_mobile/features/home/domain/entity/game_platform_entity.dart';
import 'package:meta/meta.dart' show required;
import 'package:to_string/to_string.dart';

part 'game_types_entity.g.dart';

@ToString()
class GameTypesEntity extends Equatable {
  final List<GameCategoryModel> categories;
  final List<GamePlatformEntity> platforms;

  GameTypesEntity({@required this.categories, @required this.platforms});

  @override
  List<Object> get props => [categories, platforms];

  @override
  String toString() => _$GameTypesEntityToString(this);

  bool isValid() => categories.isNotEmpty && platforms.isNotEmpty;

  String debug() =>
      'categories=${categories.length} platforms=${platforms.length}';
}
