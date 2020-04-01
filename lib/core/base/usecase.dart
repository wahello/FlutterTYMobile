import 'package:dartz/dartz.dart' show Either;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../error/failures.dart';

part 'usecase.freezed.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

@freezed
abstract class UseCaseParams with _$UseCaseParams {
  const factory UseCaseParams.none() = NoParams;
  const factory UseCaseParams.data(dynamic data) = DataParams;
  const factory UseCaseParams.list(List data) = ListParams;
}
