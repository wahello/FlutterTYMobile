import 'package:flutter_ty_mobile/core/repository_export.dart';
import 'package:flutter_ty_mobile/features/subfeatures/deposit/data/form/deposit_form.dart';
import 'package:flutter_ty_mobile/features/subfeatures/deposit/data/model/deposit_result.dart';
import 'package:flutter_ty_mobile/features/subfeatures/deposit/data/model/payment_promo.dart';
import 'package:flutter_ty_mobile/features/subfeatures/deposit/data/model/payment_raw.dart';
import 'package:flutter_ty_mobile/features/subfeatures/deposit/data/source/deposit_data_source.dart';

abstract class DepositRepository {
  Future<Either<Failure, PaymentRaw>> getPayment();
  Future<Either<Failure, PaymentPromoTypeJson>> getPaymentPromo();

  Future<Either<Failure, DepositResult>> postDeposit(DepositDataForm form);
}

class DepositRepositoryImpl implements DepositRepository {
  final tag = 'DepositRepository';
  final DepositRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  DepositRepositoryImpl({
    @required this.remoteDataSource,
    @required this.networkInfo,
  });

  @override
  Future<Either<Failure, PaymentRaw>> getPayment() async {
    final connected = await networkInfo.isConnected;
    print('network connected: $connected');
    if (connected) {
      final result =
          await handleResponse<PaymentRaw>(remoteDataSource.getPayment());
      return result.fold(
        (failure) => Left(failure),
        (model) => Right(model),
      );
    }
    return Left(Failure.network());
  }

  @override
  Future<Either<Failure, PaymentPromoTypeJson>> getPaymentPromo() async {
    final connected = await networkInfo.isConnected;
    print('network connected: $connected');
    if (connected) {
      final result = await handleResponse<PaymentPromoTypeJson>(
          remoteDataSource.getPaymentPromo());
      return result.fold(
        (failure) => Left(failure),
        (model) => Right(model),
      );
    }
    return Left(Failure.network());
  }

  @override
  Future<Either<Failure, DepositResult>> postDeposit(
      DepositDataForm form) async {
    final connected = await networkInfo.isConnected;
    print('network connected: $connected');
    if (connected) {
      final result = await handleResponse<DepositResult>(
          remoteDataSource.postDeposit(form));
      return result.fold(
        (failure) => Left(failure),
        (model) => Right(model),
      );
    }
    return Left(Failure.network());
  }
}
