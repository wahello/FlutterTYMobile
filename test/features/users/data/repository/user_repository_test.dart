import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ty_mobile/core/error/failures.dart';
import 'package:flutter_ty_mobile/core/network/util/network_info.dart';
import 'package:flutter_ty_mobile/features/users/data/form/login_form.dart';
import 'package:flutter_ty_mobile/features/users/data/models/user_freezed.dart';
import 'package:flutter_ty_mobile/features/users/data/repository/user_repository.dart';
import 'package:flutter_ty_mobile/features/users/data/source/user_data_source.dart';
import 'package:mockito/mockito.dart';

class MockUserDataSource extends Mock implements UserRemoteDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  UserRepositoryImpl repository;
  MockUserDataSource mockUserDataSource;
  MockNetworkInfo mockNetworkInfo;

  setUp(() {
    mockUserDataSource = MockUserDataSource();
    mockNetworkInfo = MockNetworkInfo();
    repository = UserRepositoryImpl(
      remoteDataSource: mockUserDataSource,
      networkInfo: mockNetworkInfo,
    );
  });

  void runTestsOnline(Function body) {
    group('device is online', () {
      setUp(() {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      });
      body();
    });
  }

  void runTestsOffline(Function body) {
    group('device is offline', () {
      setUp(() {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
      });
      body();
    });
  }

  group('getAccount', () {
    // DATA FOR THE MOCKS AND ASSERTIONS
    final UserModel userModel = UserModel(account: 'user', credit: '0.0000', status: 'success', vip: 1, vipName: '\u666e\u901a\u4f1a\u5458');

    final UserEntity userEntity = UserEntity(account: 'user', credit: '0.0000', vip: 1);

    final UserLoginForm form = UserLoginForm(account: 'user', password: '1234');

    runTestsOnline(() {
      /// need to manually block UserTokenStorage.save(...) in method for the test to pass.
      test(
          'should return remote data when the call to remote data source is successful',
              () async {
            // arrange
            when(mockUserDataSource.login(form))
                .thenAnswer((_) async => userModel);
            // act
            final result = await repository.getAccount(form);
            final item = result.getOrElse(null);
            // assert
            verify(mockNetworkInfo.isConnected);
            verify(mockUserDataSource.login(form));
            expect(item, equals(userEntity));
          });
    });

    runTestsOffline(() {
      test(
          'should return network failure when the call to remote data source is unsuccessful and no cache data',
              () async {
            // arrange
            // act
            final result = await repository.getAccount(form);
            // assert
            verify(mockNetworkInfo.isConnected);
            expect(result.length(), equals(0));
            expect(result, equals(Left(Failure.network())));
          });
    });
  });
}
