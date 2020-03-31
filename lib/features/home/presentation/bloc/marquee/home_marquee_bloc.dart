import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_ty_mobile/core/base/usecase_export.dart';
import 'package:flutter_ty_mobile/features/home/data/models/marquee_freezed.dart'
    show MarqueeEntity;
import 'package:flutter_ty_mobile/features/home/domain/usecase/get_marquee.dart';
import 'package:meta/meta.dart' show required;
import 'package:super_enum/super_enum.dart';

import 'home_marquee_event.dart';
import 'home_marquee_state.dart';

class HomeMarqueeBloc extends Bloc<HomeMarqueeEvent, HomeMarqueeState> {
  final GetHomeMarqueeData getMarqueeData;
  final tag = 'HomeMarqueeBloc';
  List<MarqueeEntity> blocData;

  HomeMarqueeBloc({
    @required GetHomeMarqueeData homeMarqueeData,
  })  : assert(homeMarqueeData != null),
        getMarqueeData = homeMarqueeData;

  @override
  HomeMarqueeState get initialState => HomeMarqueeState.mInitial();

  @override
  void onTransition(Transition<HomeMarqueeEvent, HomeMarqueeState> transition) {
//    print('marquee state, current: ${transition.currentState}');
//    print('marquee state, next: ${transition.nextState.runtimeType}');
    super.onTransition(transition);
  }

  @override
  Stream<HomeMarqueeState> mapEventToState(
    HomeMarqueeEvent event,
  ) async* {
    MyLogger.print(msg: 'mapEventToState: $event', tag: tag);
    if (event is GetMarqueeEvent) {
      yield HomeMarqueeState.mLoading();
    }
    if (blocData != null && blocData.isNotEmpty) {
      MyLogger.log(
          msg: 'using marquee data stored in bloc: ${blocData.length}',
          tag: tag);
      yield HomeMarqueeState.mLoaded(marquee: blocData);
    } else {
      // action on different event
      yield* await event.when(
        getMarqueeEvent: (event) => streamMarqueeDataState(event),
      );
    }
  }

  /// Get banner data from repository through [GetMarqueeData]
  Stream<HomeMarqueeState> streamMarqueeDataState(
      GetMarqueeEvent event) async* {
    final failureOrData = await getMarqueeData(NoParams());
    yield failureOrData.fold(
      (failure) => HomeMarqueeState.mError(message: failure.message),
      (marquees) {
        blocData = List.from(marquees);
//        print('stored marquee data: $blocData');
        return HomeMarqueeState.mLoaded(marquee: blocData);
      },
    );
  }
}
