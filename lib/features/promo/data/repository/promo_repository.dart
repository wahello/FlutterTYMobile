import 'package:flutter_ty_mobile/core/repository_export.dart';
import 'package:flutter_ty_mobile/core/error/exceptions.dart' show HiveDataException;
import 'package:flutter_ty_mobile/features/promo/data/models/promo_freezed.dart';
import 'package:flutter_ty_mobile/features/promo/data/source/promo_local_data_source.dart';
import 'package:flutter_ty_mobile/features/promo/data/source/promo_remote_data_source.dart';

abstract class PromoRepository {
  Future<Either<Failure, List<PromoEntity>>> getPromos();
  Future<Either<Failure, List<PromoEntity>>> getCachedPromos();
}

class PromoRepositoryImpl implements PromoRepository {
  final tag = 'PromoRepository';
  final PromoRemoteDataSource remoteDataSource;
  final PromoLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  PromoRepositoryImpl({
    @required this.remoteDataSource,
    @required this.localDataSource,
    @required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<PromoEntity>>> getPromos() async {
    final connected = await networkInfo.isConnected;
//    print('network connected: $connected');
    if (connected) {
      final result = await handleResponse<List<PromoModel>>(
          remoteDataSource.getPromos());
//      print('test response type: ${result.runtimeType}');
      return result.fold(
            (failure) {
          if (failure.typeIndex == 0)
            return getCachedPromos();
          else
            return Left(failure);
        },
            (models) => Right(transformPromoModels(models)),
      );
    }
    return getCachedPromos();
  }

  List<PromoEntity> transformPromoModels(List<PromoModel> data) {
    final list = data.map((model) {
      return model.entity;
    }).toList();
    MyLogger.log(msg: 'mapped promo models: ${list.length}', tag: tag);
    return list;
  }

  @override
  Future<Either<Failure, List<PromoEntity>>> getCachedPromos() async {
    try {
      print('accessing local data source...');
      var cached = await localDataSource.getCachedPromos();
//      print('data from cached source: $cached');
      if (cached.isNotEmpty)
        return Right(cached);
      else
        return Left(Failure.network());
    } on HiveDataException {
      MyLogger.debug(msg: 'no cached promo', tag: tag);
      return Right(new List<PromoEntity>(0));
    }
  }
}
