import 'package:flutter_ty_mobile/core/base/usecase_export.dart';
import 'package:flutter_ty_mobile/features/users/data/form/login_form.dart';
import 'package:flutter_ty_mobile/features/users/domain/entity/user_entity.dart';
import 'package:flutter_ty_mobile/features/users/domain/repository/user_repository.dart';

class GetUserData implements UseCase<UserEntity, DataParams> {
  final UserRepository userRepository;
  final tag = 'GetUserData';

  GetUserData(this.userRepository);

  @override
  Future<Either<Failure, UserEntity>> call(DataParams params) async {
    MyLogger.print(msg: 'called user usecase', tag: tag);
    var data = params.props.first;
    if (!(data is UserLoginForm)) {
      MyLogger.warn(msg: 'user state data: $data', tag: tag);
      return Left(Failure.dataType());
    } else {
      return await userRepository.getAccount(data as UserLoginForm);
    }
  }
}
