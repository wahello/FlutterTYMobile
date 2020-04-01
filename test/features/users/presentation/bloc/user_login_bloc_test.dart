import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ty_mobile/features/users/data/form/login_form.dart';
import 'package:flutter_ty_mobile/features/users/data/models/user_freezed.dart';
import 'package:flutter_ty_mobile/features/users/presentation/bloc/bloc_user_export.dart';
import 'package:flutter_ty_mobile/features/users/presentation/usecase/get_user.dart';
import 'package:mockito/mockito.dart';

class MockGetUserData extends Mock implements GetUserData {}

class MockMapGetUserToState extends Mock {
  Stream<UserLoginState> call(GetUserEvent event);
}

void main() {
  UserLoginBloc bloc;
  MockGetUserData mockGetUserData;

  setUp(() {
    mockGetUserData = MockGetUserData();
    bloc = UserLoginBloc(
      userData: mockGetUserData,
    );
  });

  final UserEntity userEntity = UserEntity(account: 'user', credit: '0.0000', vip: 1);

  final UserLoginForm form = UserLoginForm(account: 'user', password: '1234');

  test('initialState should be Empty', () {
    // assert
    expect(bloc.initialState, equals(UserLoginState.uInitial()));
  });

  group('GetUserData', () {
    test(
      'should get data from the user data use case',
          () async {
        // arrange
        when(mockGetUserData(any))
            .thenAnswer((_) async => Right(userEntity));
        // act
        bloc.add(GetUserEvent(form: form));
        await untilCalled(mockGetUserData(any));
        // assert
        verify(mockGetUserData(any));
      },
    );

    test(
      'bloc state should be loaded when data has been processed without failure',
          () async {
        // arrange
        when(mockGetUserData(any))
            .thenAnswer((_) async => Right(userEntity));
        // assert later
        // act
        bloc.add(GetUserEvent(form: form));
        await untilCalled(mockGetUserData(any));
        await untilCalled(bloc.transformStates(
            Stream.value(UserLoginState.uLoaded(user: any))));
        // assert
        await Future.delayed(Duration(milliseconds: 200));
        expect(bloc.state, UserLoginState.uLoaded(user: userEntity));
      },
    );
  });

  group('test bloc state', () {
    blocTest(
      'emits [] when nothing is added',
      build: () async => bloc,
      expect: [],
    );

    test('emits [loading, loaded] when post event', () async {
      when(mockGetUserData(any))
          .thenAnswer((_) async => Right(userEntity));

      expect(bloc.state, equals(UserLoginState.uInitial()));

      bloc.add(GetUserEvent(form: form));
      await emitsExactly(
          bloc,
          [
            UserLoginState.uLoading(),
            UserLoginState.uLoaded(user: userEntity),
          ],
          duration: const Duration(milliseconds: 300));
    });
  });
}
