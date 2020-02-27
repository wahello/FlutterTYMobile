import 'package:dartz/dartz.dart';
import 'package:flutter_ty_mobile/core/error/failures.dart';
import 'package:flutter_ty_mobile/features/home/data/form/platform_game_form.dart';
import 'package:flutter_ty_mobile/features/home/domain/entity/entities.dart';
import 'package:flutter_ty_mobile/features/home/domain/entity/game_types_entity.dart';

abstract class HomeRepository {
  /// If device network if available, get data from remote data source.
  /// Else get data from local data source.
  ///
  /// If the remote data source has successfully retrieve data,
  /// map it into a list of [BannerEntity] .
  ///
  Future<Either<Failure, List<BannerEntity>>> getBanners();
  Future<Either<Failure, List<BannerEntity>>> getCachedBanners();
  Future<Either<Failure, List<MarqueeEntity>>> getMarquees();
  Future<Either<Failure, List<MarqueeEntity>>> getCachedMarquees();
  Future<Either<Failure, GameTypesEntity>> getGameTypes();
  Future<Either<Failure, GameTypesEntity>> getCachedGameTypes();
  Future<Either<Failure, List<GameEntity>>> getGames(PlatformGameForm form);
//  Future<Either<Failure, List<GameEntity>>> getGames();
}
