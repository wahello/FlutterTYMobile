import 'package:bloc/bloc.dart';
import 'package:flutter_ty_mobile/core/base/usecase_export.dart';
import 'package:flutter_ty_mobile/features/home/data/models/banner_freezed.dart'
    show BannerEntity;
import 'package:flutter_ty_mobile/features/home/domain/usecase/get_banner_data.dart';
import 'package:flutter_ty_mobile/features/home/domain/usecase/get_banner_image.dart';
import 'package:flutter_ty_mobile/utils/string_util.dart'
    show ValueStringExtension;
import 'package:meta/meta.dart' show required;

import 'home_banner_event.dart';
import 'home_banner_state.dart';

class HomeBannerBloc extends Bloc<HomeBannerEvent, HomeBannerState> {
  final GetHomeBannerData getHomeBannerData;
  final GetHomeBannerImage getHomeBannerImage;
  final tag = 'HomeBannerBloc';
  List<BannerEntity> blocData;
  List<int> blocPromoIds;
  List blocImages;

  HomeBannerBloc({
    @required GetHomeBannerData homeBannerData,
    @required GetHomeBannerImage homeBannerImageInfo,
  })  : assert(homeBannerData != null),
        assert(homeBannerImageInfo != null),
        getHomeBannerData = homeBannerData,
        getHomeBannerImage = homeBannerImageInfo;

  @override
  HomeBannerState get initialState => HomeBannerState.bInitial();

  @override
  void onTransition(Transition<HomeBannerEvent, HomeBannerState> transition) {
//    print('banner state, current: ${transition.currentState}');
//    print('banner state, next: ${transition.nextState.runtimeType}');
    super.onTransition(transition);
  }

  @override
  Stream<HomeBannerState> mapEventToState(
    HomeBannerEvent event,
  ) async* {
    MyLogger.print(msg: 'mapEventToState: $event', tag: tag);
    if (event is GetBannerEvent) {
      yield HomeBannerState.bLoading();
    }
    if ((blocImages != null && blocImages.isNotEmpty) &&
        blocPromoIds != null &&
        blocPromoIds.length == blocImages.length) {
      MyLogger.log(
          msg:
              'using banner images stored in bloc: ${blocImages.length}, ids: ${blocPromoIds.length}',
          tag: tag);
      yield HomeBannerState.bLoaded(images: blocImages, promoIds: blocPromoIds);
    } else {
      // action on different event
      yield* await event.when(
        getBannerEvent: (event) => streamBannerDataState(event),
        getBannerImageEvent: (event) => streamBannerImagesState(event),
      );
    }
  }

  /// Get banner data from repository through [GetHomeBannerData]
  Stream<HomeBannerState> streamBannerDataState(GetBannerEvent event) async* {
    final failureOrData = await getHomeBannerData(NoParams());
    yield failureOrData.fold(
      // TODO add failure alert
      (failure) => HomeBannerState.bError(message: failure.message),
      (banners) {
//          print('stream banner data returned: ${banners.length}');
        blocData = List.from(banners);
        blocPromoIds = banners.map((data) {
          if (data.noPromo || data.promoUrl.startsWith('promo') == false)
            return -1;
          return data.promoUrl.split('/').last.valueToInt;
        }).toList();
//          print('banner promo ids: ${blocPromoIds.length}');
        return HomeBannerState.bCaching(banners: blocData);
      },
    );
  }

  /// Process banner data passed from bloc state.
  /// Yield for state transition after data has been processed.
  Stream<HomeBannerState> streamBannerImagesState(
      GetBannerImageEvent event) async* {
    final failureOrData =
        await getHomeBannerImage(DataParams(state.props.first));
    yield failureOrData.fold(
      (failure) => HomeBannerState.bError(message: failure.message),
      (images) {
//        print('stream banner image returned: ${images.length}');
        blocImages = List.from(images);
        return HomeBannerState.bLoaded(
            images: blocImages, promoIds: blocPromoIds);
      },
    );
    blocData = null;
  }
}
