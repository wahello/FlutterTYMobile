import 'package:flutter_ty_mobile/core/repository_export.dart';
import 'package:flutter_ty_mobile/features/general/data/user/user_token_storage.dart';
import 'package:flutter_ty_mobile/features/users/data/form/login_form.dart';
import 'package:flutter_ty_mobile/features/users/data/models/user_freezed.dart';
import 'package:flutter_ty_mobile/features/users/data/source/user_data_source.dart';

abstract class UserRepository {
  Future<Either<Failure, UserEntity>> getAccount(UserLoginForm form);
}

class UserRepositoryImpl implements UserRepository {
  final tag = 'UserRepository';
  final UserRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  UserRepositoryImpl({
    @required this.remoteDataSource,
    @required this.networkInfo,
  });

  @override
  Future<Either<Failure, UserEntity>> getAccount(UserLoginForm form) async {
    final connected = await networkInfo.isConnected;
    print('network connected: $connected');
    MyLogger.print(msg: 'login form: $form', tag: tag);
    if (connected) {
      final result =
          await handleResponse<UserModel>(remoteDataSource.login(form));
      return result.fold(
        (failure) => Left(failure),
        (model) {
//          print('test model parent caller: ${model.parent}');
          if (model.isValid) {
            UserTokenStorage.save(form.account);
            return Right(model.entity);
          } else {
            return Left(Failure.token());
          }
        },
      );
    }
    return Left(Failure.network());
  }
}
