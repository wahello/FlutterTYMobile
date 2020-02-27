import 'package:dartz/dartz.dart' show Either, Left, Right;
import 'package:flutter_ty_mobile/core/error/failures.dart';
import 'package:flutter_ty_mobile/core/network/handler/data_request_handler.dart'
    show handleResponse;
import 'package:flutter_ty_mobile/core/network/util/network_info.dart';
import 'package:flutter_ty_mobile/template/page/data/source/template2_data_source.dart';
import 'package:flutter_ty_mobile/template/page/domain/repository/template_repository.dart';
import 'package:meta/meta.dart' show required;

class Template2RepositoryImpl implements Template2Repository {
  final tag = 'Template2Repository';
  final Template2DataSource remoteDataSource;
  final NetworkInfo networkInfo;

  Template2RepositoryImpl({
    @required this.remoteDataSource,
    @required this.networkInfo,
  });

  @override
  Future<Either<Failure, String>> fetchString() async {
    final connected = await networkInfo.isConnected;
    print('network connected: $connected');
    if (connected) {
      final result =
          await handleResponse<String>(remoteDataSource.getString());
      return result.fold(
            (failure) => Left(failure),
            (model) => Right(model),
      );
    }
    return Left(Failure.network());
  }

  @override
  Future<Either<Failure, String>> fetchString2(String data) async {
    final connected = await networkInfo.isConnected;
    print('network connected: $connected');
    if (connected) {
      final result =
          await handleResponse<String>(remoteDataSource.getString2(data));
      return result.fold(
            (failure) => Left(failure),
            (model) => Right(model),
      );
    }
    return Left(Failure.network());
  }
}
