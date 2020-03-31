import 'package:flutter_ty_mobile/core/error/exceptions.dart';
import 'package:flutter_ty_mobile/core/repository_export.dart';
import 'package:flutter_ty_mobile/features/home/data/models/entities.dart';
import 'package:flutter_ty_mobile/features/home/data/models/game_types_freezed.dart';
import 'package:flutter_ty_mobile/features/home/data/models/models.dart';
import 'package:flutter_ty_mobile/features/home/data/source/home_local_data_source.dart';
import 'package:flutter_ty_mobile/features/home/data/source/home_remote_data_source.dart';
import 'package:flutter_ty_mobile/features/home/domain/entity/platform_game_form.dart';
import 'package:flutter_ty_mobile/features/home/domain/repository/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final tag = 'HomeRepository';
  final HomeRemoteDataSource remoteDataSource;
  final HomeLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  HomeRepositoryImpl({
    @required this.remoteDataSource,
    @required this.localDataSource,
    @required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<BannerEntity>>> getBanners() async {
    final connected = await networkInfo.isConnected;
    print('network connected: $connected');
//    if (!connected) {
//      final test = networkInfo.checkType;
//      print('network type: $test');
//    }
    if (connected) {
      final result = await handleResponse<List<BannerModel>>(
          remoteDataSource.getBanners());
//      print('test response type: ${result.runtimeType}');
      return result.fold(
        (failure) {
          if (failure.typeIndex == 0)
            return getCachedBanners();
          else
            return Left(failure);
        },
        (models) => Right(transformBannerModel(models)),
      );
    }
    return getCachedBanners();
  }

  List<BannerEntity> transformBannerModel(List<BannerModel> data) {
    final list = data.map((model) {
      return model.entity;
    }).toList();
    MyLogger.log(msg: 'mapped banner model: ${list.length}', tag: tag);
    localDataSource.cacheBanners(list);
    return list;
  }

  @override
  Future<Either<Failure, List<BannerEntity>>> getCachedBanners() async {
    try {
      print('accessing banner local data source...');
      var cached = await localDataSource.getCachedBanners();
//      print('data from cached source: $cached');
      if (cached.isNotEmpty)
        return Right(cached);
      else
        return Left(Failure.network());
    } on HiveDataException {
      MyLogger.debug(msg: 'no cached banner', tag: tag);
      return Right(new List<BannerEntity>(0));
    }
  }

  @override
  Future<Either<Failure, List<MarqueeEntity>>> getMarquees() async {
    final connected = await networkInfo.isConnected;
    print('network connected: $connected');
    if (connected) {
      final result = await handleResponse<MarqueeModelList>(
          remoteDataSource.getMarquees());
//      print('test response type: ${result.runtimeType}');
      return result.fold(
        (failure) => Left(failure),
        (model) => Right(transformMarqueeModelList(model.marquees)),
      );
    }
//    return getCachedMarquees();
    return Future.value(Left(Failure.network()));
  }

  List<MarqueeEntity> transformMarqueeModelList(List<MarqueeModel> data) {
    final list = data.map((model) {
      return model.entity;
    }).toList();
    MyLogger.log(msg: 'mapped marquee model: ${list.length}', tag: tag);
//    localDataSource.cacheMarquees(list);
    return list;
  }

  @override
  Future<Either<Failure, List<MarqueeEntity>>> getCachedMarquees() async {
    try {
      print('accessing marquee local data source...');
      var cached = await localDataSource.getCachedMarquees();
//      print('data from cached source: $cached');
      if (cached.isNotEmpty)
        return Right(cached);
      else
        return Left(Failure.network());
    } on HiveDataException {
      MyLogger.debug(msg: 'no cached marquee', tag: tag);
      return Right(new List<MarqueeEntity>(0));
    }
  }

  @override
  Future<Either<Failure, GameTypes>> getGameTypes() async {
    final connected = await networkInfo.isConnected;
    print('network connected: $connected');
    if (connected) {
      final result =
          await handleResponse<GameTypes>(remoteDataSource.getGameTypes());
      return result.fold(
        (failure) => Left(failure),
        (model) => Right(transformGameTypeModelList(model)),
      );
    }
    return getCachedGameTypes();
  }

  GameTypes transformGameTypeModelList(GameTypes data) {
    final entity = data.shrink;
    MyLogger.log(msg: 'mapped game-type model: ${entity.debug}', tag: tag);
    localDataSource.cacheGameTypes(entity);
    return entity;
  }

  @override
  Future<Either<Failure, GameTypes>> getCachedGameTypes() async {
    try {
      print('accessing game-types local data source...');
      var cached = await localDataSource.getCachedGameTypes();
//      print('data from cached source: $cached');
      if (cached != null &&
          cached.categories.isNotEmpty &&
          cached.platforms.isNotEmpty)
        return Right(cached);
      else
        return Left(Failure.network());
    } on HiveDataException {
      MyLogger.debug(msg: 'no cached game-types', tag: tag);
      return Right(new GameTypes(categories: [], platforms: []));
    }
  }

  @override
  Future<Either<Failure, List<GameEntity>>> getGames(
      PlatformGameForm form) async {
    final connected = await networkInfo.isConnected;
    print('network connected: $connected');
    if (connected) {
      final result = await handleResponse<List<GameModel>>(
          remoteDataSource.getGames(form));
      return result.fold(
        (failure) => Left(failure),
        (list) => Right(transformGamesModel(list)),
      );
    }
    return Left(Failure.network());
  }

  List<GameEntity> transformGamesModel(List<GameModel> data) {
    final list = data.map((model) {
      return model.entity;
    }).toList();
    MyLogger.log(msg: 'mapped game models: ${list.length}', tag: tag);
    return list;
  }

  @override
  Future<Either<Failure, String>> getGameUrl(String requestUrl) async {
    if (requestUrl == null || requestUrl.isEmpty) {
      MyLogger.error(msg: 'game url is empty', tag: tag);
      return Left(Failure.internal());
    }

    final connected = await networkInfo.isConnected;
    print('network connected: $connected');
    if (connected) {
      final result =
          await handleResponse<String>(remoteDataSource.getGameUrl(requestUrl));
      return result.fold(
        (failure) => Left(failure),
        (data) => Right(data),
      );
    }
    return Left(Failure.network());
  }
}
