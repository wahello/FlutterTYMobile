import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ty_mobile/core/base/usecase.dart';
import 'package:flutter_ty_mobile/features/users/data/form/login_form.dart';
import 'package:flutter_ty_mobile/features/users/data/models/user_freezed.dart';
import 'package:flutter_ty_mobile/features/users/data/repository/user_repository.dart';
import 'package:flutter_ty_mobile/features/users/presentation/usecase/get_user.dart';
import 'package:mockito/mockito.dart';

class MockUserRepository extends Mock implements UserRepository {}

void main() {
  GetUserData usecase;
  MockUserRepository mockUserRepository;

  setUp(() {
    mockUserRepository = MockUserRepository();
    usecase = GetUserData(mockUserRepository);
  });

  final UserEntity userEntity = UserEntity(account: 'user', credit: '0.0000', vip: 1);

  final UserLoginForm form = UserLoginForm(account: 'user', password: '1234');

  /// need to manually block UserTokenStorage.save(...) in method for the test to pass.
  test(
    'should get user account info from the repository',
        () async {
      // arrange
      when(mockUserRepository.getAccount(form))
          .thenAnswer((_) async => Right(userEntity));
      // act
      final result = await usecase(DataParams(form));
      final item = result.getOrElse(null);
      print("test result: ${item.toString()}");
      // assert
      expect(item, userEntity);
      // Verify that the method has been called on the Repository
      verify(mockUserRepository.getAccount(form));
      // Only the above method should be called and nothing more.
      verifyNoMoreInteractions(mockUserRepository);
    },
  );
}
