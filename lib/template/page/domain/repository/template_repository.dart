import 'package:dartz/dartz.dart' show Either;
import 'package:flutter_ty_mobile/core/error/failures.dart';

abstract class Template2Repository {
  Future<Either<Failure, String>> fetchString();
  Future<Either<Failure, String>> fetchString2(String data);
}
