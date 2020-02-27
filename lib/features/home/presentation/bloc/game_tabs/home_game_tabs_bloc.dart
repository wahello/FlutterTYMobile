import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_ty_mobile/features/home/domain/entity/entities.dart';
import 'package:flutter_ty_mobile/features/home/domain/usecase/get_game_types.dart';
import 'package:flutter_ty_mobile/core/base/usecase_export.dart';
import 'package:meta/meta.dart' show required;
import 'package:super_enum/super_enum.dart';

import 'home_game_tabs_event.dart';
import 'home_game_tabs_state.dart';

class HomeGameTabsBloc extends Bloc<HomeGameTabsEvent, HomeGameTabsState> {
  final GetGameTypesData getGameTypesData;
  final tag = 'HomeGameBloc';
  GameTypesEntity blocData;

  HomeGameTabsBloc({
    @required GetGameTypesData gameTypesData,
  })  : assert(gameTypesData != null),
        getGameTypesData = gameTypesData;

  @override
  HomeGameTabsState get initialState => HomeGameTabsState.tInitial();

  @override
  void onTransition(
      Transition<HomeGameTabsEvent, HomeGameTabsState> transition) {
//    print('game state, current: ${transition.currentState}');
    print('game state, next: ${transition.nextState.runtimeType}');
    super.onTransition(transition);
  }

  @override
  Stream<HomeGameTabsState> mapEventToState(
    HomeGameTabsEvent event,
  ) async* {
    MyLogger.print(msg: 'mapEventToState: $event', tag: tag);
    if (event is GetGameTypesEvent) {
      yield HomeGameTabsState.tLoading();
    }
    if (blocData != null && blocData.isValid()) {
      MyLogger.log(
          msg: 'using game-types data stored in bloc: ${blocData.debug()}',
          tag: tag);
      yield HomeGameTabsState.tLoaded(types: blocData);
    } else {
      // action on different event
      yield* await event.when(
        getGameTypesEvent: (event) => streamGameTypesDataState(event),
      );
    }
  }

  /// Get game type data from repository through [GetGameTypesData]
  Stream<HomeGameTabsState> streamGameTypesDataState(
      GetGameTypesEvent event) async* {
    final failureOrData = await getGameTypesData(NoParams());
    yield failureOrData.fold(
      // TODO add failure alert
      (failure) => HomeGameTabsState.tError(message: failure.message),
      (data) {
//        print('stream game-types data returned: $data');
        blocData = GameTypesEntity(
            categories: List.from(data.categories),
            platforms: List.from(data.platforms));
//        print('stored stream game-types data: $blocData');
        return HomeGameTabsState.tLoaded(types: blocData);
      },
    );
  }
}
