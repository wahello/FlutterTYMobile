import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ty_mobile/core/base/usecase.dart';
import 'package:flutter_ty_mobile/core/error/failures.dart';
import 'package:flutter_ty_mobile/core/internal/global.dart';
import 'package:flutter_ty_mobile/features/home/domain/entity/banner_entity.dart';
import 'package:flutter_ty_mobile/features/home/domain/usecase/get_banner_data.dart';
import 'package:flutter_ty_mobile/features/home/domain/usecase/get_banner_image.dart';
import 'package:flutter_ty_mobile/features/home/presentation/bloc/bloc_banner.dart';
import 'package:mockito/mockito.dart';

class MockGetHomeBanner extends Mock implements GetHomeBannerData {}

class MockGetHomeBannerImageInfo extends Mock implements GetHomeBannerImage {}

class MockMapGetBannerToState extends Mock {
  Stream<HomeBannerState> call(GetBannerEvent event);
}

void main() {
  HomeBannerBloc bloc;
  MockGetHomeBanner mockGetHomeBanner;
  MockGetHomeBannerImageInfo mockGetHomeBannerImageInfo;
  MockMapGetBannerToState mockMapGetBannerToState;

  setUp(() {
    mockGetHomeBanner = MockGetHomeBanner();
    mockGetHomeBannerImageInfo = MockGetHomeBannerImageInfo();
    bloc = HomeBannerBloc(
      homeBannerData: mockGetHomeBanner,
      homeBannerImageInfo: mockGetHomeBannerImageInfo,
    );
    mockMapGetBannerToState = MockMapGetBannerToState();
  });

  final BannerEntity bannerInfo = BannerEntity(
    id: 1,
    picMobile: "images/banner/mobile/291.jpg",
    blankUrl: true,
    promoUrl: "456456456",
    sort: 8,
  );

  final String bannerUrl = Global.CURRENT_SERVICE + bannerInfo.picMobile;

  test('initialState should be Empty', () {
    // assert
    expect(bloc.initialState, equals(HomeBannerState.bInitial()));
  });

  group('GetBannerData', () {
    test(
      'should get data from the banner use case and pass it to the image use case',
      () async {
        // arrange
        when(mockGetHomeBanner(NoParams()))
            .thenAnswer((_) async => Right([bannerInfo]));
        when(mockGetHomeBannerImageInfo(DataParams([bannerInfo])))
            .thenAnswer((_) async => Right([bannerUrl]));
        // act
        bloc.add(GetBannerEvent());
        await untilCalled(mockGetHomeBanner(NoParams()));
        bloc.add(GetBannerImageEvent());
        await untilCalled(mockGetHomeBannerImageInfo(DataParams([bannerInfo])));
        // assert
        verify(mockGetHomeBanner(NoParams()));
        verify(mockGetHomeBannerImageInfo(DataParams([bannerInfo])));
      },
    );

    test(
      'bloc state should be loaded when data has been processed without failure',
      () async {
        // arrange
        when(mockGetHomeBanner(any))
            .thenAnswer((_) async => Right([bannerInfo]));
        when(mockGetHomeBannerImageInfo(any))
            .thenAnswer((_) async => Right([bannerUrl]));
        // assert later
        // act
        bloc.add(GetBannerEvent());
        await untilCalled(mockGetHomeBanner(any));
        await untilCalled(bloc.transformStates(
            Stream.value(HomeBannerState.bCaching(banners: [bannerInfo]))));
        bloc.add(GetBannerImageEvent());
        await untilCalled(mockGetHomeBannerImageInfo(any));
        await untilCalled(bloc.transformStates(
            Stream.value(HomeBannerState.bLoaded(images: any))));
        // assert
        await Future.delayed(Duration(milliseconds: 200));
        expect(bloc.state, HomeBannerState.bLoaded(images: [bannerUrl]));
      },
    );

    test(
      'bloc state should be error when no network connection and no cached data',
      () async {
        // arrange
        when(mockGetHomeBanner(any))
            .thenAnswer((_) async => Left(Failure.server()));
        // assert later
        // act
        bloc.add(GetBannerEvent());
        await untilCalled(mockGetHomeBanner(any));
        await untilCalled(bloc.transformStates(
            Stream.value(HomeBannerState.bError(message: any))));
        // assert
        await Future.delayed(Duration(milliseconds: 200));
        expect(bloc.state,
            HomeBannerState.bError(message: Failure.server().message));
      },
    );
  });

  group('test home banner bloc state', () {
    final BannerEntity bannerInfo = BannerEntity(
      id: 1,
      picMobile: "images/banner/mobile/291.jpg",
      blankUrl: true,
      promoUrl: "456456456",
      sort: 8,
    );

    blocTest(
      'emits [initial] when nothing is added',
      build: () async => bloc,
      expect: [HomeBannerState.bInitial()],
    );

    test('emits [initial, loading, caching, loaded] when post event', () async {
      when(mockGetHomeBanner(NoParams()))
          .thenAnswer((_) async => Right([bannerInfo]));
      when(mockGetHomeBannerImageInfo(DataParams([bannerInfo])))
          .thenAnswer((_) async => Right([bannerUrl]));
      bloc.add(GetBannerEvent());
      bloc.add(GetBannerImageEvent());
      await emitsExactly(
          bloc,
          [
            HomeBannerState.bInitial(),
            HomeBannerState.bLoading(),
            HomeBannerState.bCaching(banners: [bannerInfo]),
            HomeBannerState.bLoaded(images: [bannerUrl]),
          ],
          duration: const Duration(milliseconds: 300));
    });
  });
}
