import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ty_mobile/core/base/usecase.dart';
import 'package:flutter_ty_mobile/core/error/failures.dart';
import 'package:flutter_ty_mobile/features/home/domain/entity/marquee_entity.dart';
import 'package:flutter_ty_mobile/features/home/domain/usecase/get_marquee.dart';
import 'package:flutter_ty_mobile/features/home/presentation/bloc/bloc_marquee.dart';
import 'package:mockito/mockito.dart';

class MockGetHomeMarquee extends Mock implements GetHomeMarqueeData {}

class MockMapGetMarqueeToState extends Mock {
  Stream<HomeMarqueeState> call(GetMarqueeEvent event);
}

void main() {
  HomeMarqueeBloc bloc;
  MockGetHomeMarquee mockGetHomeMarquee;

  setUp(() {
    mockGetHomeMarquee = MockGetHomeMarquee();
    bloc = HomeMarqueeBloc(
      homeMarqueeData: mockGetHomeMarquee,
    );
  });

  final MarqueeEntity marqueeEntity = MarqueeEntity(
    id: 2,
    content:
        "尊敬的会员，目前快捷支付、微信支付维护中，公司提供银行入款、支付宝支付、在线支付、银联扫码、虚拟货币，请会员多多参考以上充值方式唷～TEST",
    url: "https://www.baidu.com/",
  );

  test('initialState should be Empty', () {
    // assert
    expect(bloc.initialState, equals(HomeMarqueeState.mInitial()));
  });

  group('GetMarqueeData', () {
    test(
      'should get data from the marquee use case',
      () async {
        // arrange
        when(mockGetHomeMarquee(NoParams()))
            .thenAnswer((_) async => Right([marqueeEntity]));
        // act
        bloc.add(GetMarqueeEvent());
        await untilCalled(mockGetHomeMarquee(NoParams()));
        // assert
        verify(mockGetHomeMarquee(NoParams()));
      },
    );

    test(
      'bloc state should be loaded when data has been processed without failure',
      () async {
        // arrange
        when(mockGetHomeMarquee(any))
            .thenAnswer((_) async => Right([marqueeEntity]));
        // assert later
        // act
        bloc.add(GetMarqueeEvent());
        await untilCalled(mockGetHomeMarquee(any));
        await untilCalled(bloc.transformStates(
            Stream.value(HomeMarqueeState.mLoaded(marquee: any))));
        // assert
        await Future.delayed(Duration(milliseconds: 200));
        expect(bloc.state, HomeMarqueeState.mLoaded(marquee: [marqueeEntity]));
      },
    );

    test(
      'bloc state should be error when no network connection and no cached data',
      () async {
        // arrange
        when(mockGetHomeMarquee(any))
            .thenAnswer((_) async => Left(Failure.server()));
        // assert later
        // act
        bloc.add(GetMarqueeEvent());
        await untilCalled(mockGetHomeMarquee(any));
        await untilCalled(bloc.transformStates(
            Stream.value(HomeMarqueeState.mError(message: any))));
        // assert
        await Future.delayed(Duration(milliseconds: 200));
        expect(bloc.state,
            HomeMarqueeState.mError(message: Failure.server().message));
      },
    );
  });

  group('test home banner bloc state', () {
    blocTest(
      'emits [initial] when nothing is added',
      build: () async => bloc,
      expect: [HomeMarqueeState.mInitial()],
    );

    test('emits [initial, loading, loaded] when post event', () async {
      when(mockGetHomeMarquee(NoParams()))
          .thenAnswer((_) async => Right([marqueeEntity]));
      bloc.add(GetMarqueeEvent());
      await emitsExactly(
          bloc,
          [
            HomeMarqueeState.mInitial(),
            HomeMarqueeState.mLoading(),
            HomeMarqueeState.mLoaded(marquee: [marqueeEntity]),
          ],
          duration: const Duration(milliseconds: 300));
    });
  });
}
