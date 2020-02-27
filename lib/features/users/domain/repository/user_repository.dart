import 'package:dartz/dartz.dart' show Either;
import 'package:flutter_ty_mobile/core/error/failures.dart';
import 'package:flutter_ty_mobile/features/users/data/form/login_form.dart';
import 'package:flutter_ty_mobile/features/users/domain/entity/user_entity.dart';

abstract class UserRepository {
  Future<Either<Failure, UserEntity>> getAccount(UserLoginForm form);
}
