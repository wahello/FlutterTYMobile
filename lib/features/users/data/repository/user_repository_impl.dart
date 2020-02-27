import 'package:flutter_ty_mobile/features/general/data/repository_export.dart';
import 'package:flutter_ty_mobile/features/general/data/user_token_storage.dart';
import 'package:flutter_ty_mobile/features/users/data/form/login_form.dart';
import 'package:flutter_ty_mobile/features/users/data/models/user_model.dart';
import 'package:flutter_ty_mobile/features/users/data/source/user_data_source.dart';
import 'package:flutter_ty_mobile/features/users/domain/entity/user_entity.dart';
import 'package:flutter_ty_mobile/features/users/domain/repository/user_repository.dart';

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
          UserTokenStorage.save(form.account);
          return Right(model.parent);
        },
      );
    }
    return Left(Failure.network());
  }
}
