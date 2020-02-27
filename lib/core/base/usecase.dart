import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../error/failures.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}

class DataParams extends Equatable {
  final dynamic data;

  DataParams(this.data);

  @override
  List<Object> get props => [data];
}

class ListParams extends Equatable {
  final List list;

  ListParams(this.list);

  @override
  List<Object> get props => [list];
}
