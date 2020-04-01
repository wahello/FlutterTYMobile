import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_ty_mobile/core/base/usecase_export.dart';
import 'package:flutter_ty_mobile/features/home/domain/usecase/get_game_url.dart';
import 'package:flutter_ty_mobile/features/home/domain/usecase/get_games.dart';
import 'package:meta/meta.dart' show required;
import 'package:super_enum/super_enum.dart';

import 'home_game_event.dart';
import 'home_game_state.dart';

class HomeGameBloc extends Bloc<HomeGameEvent, HomeGameState> {
  final GetGamesData getGamesData;
  final GetGameUrl getGameUrl;
  final tag = 'HomeGameBloc';

  HomeGameBloc({
    @required GetGamesData gamesData,
    @required GetGameUrl gameUrl,
  })  : assert(gamesData != null),
        assert(gameUrl != null),
        getGamesData = gamesData,
        getGameUrl = gameUrl;

  @override
  HomeGameState get initialState => HomeGameState.gInitial();

  @override
  void onTransition(Transition<HomeGameEvent, HomeGameState> transition) {
//    print('game state, current: ${transition.currentState}');
//    print('game state, next: ${transition.nextState}');
    super.onTransition(transition);
  }

  @override
  Stream<HomeGameState> mapEventToState(
    HomeGameEvent event,
  ) async* {
    MyLogger.print(msg: 'mapEventToState: $event', tag: tag);
    if (event is GetGamesEvent) {
      yield HomeGameState.gLoading();
    }
    // action on different event
    yield* await event.when(
      getGamesEvent: (event) => streamGamesDataState(event),
    );
  }

  /// Get games data from repository through [GetGamesData]
  Stream<HomeGameState> streamGamesDataState(GetGamesEvent event) async* {
    final failureOrData = await getGamesData(DataParams(event.form));
    yield failureOrData.fold(
      // TODO add failure alert
      (failure) => HomeGameState.gError(message: failure.message),
      (data) => HomeGameState.gLoaded(tabsData: data),
    );
  }

  Future<String> requestGameUrl(String url) async {
    final failureOrData = await getGameUrl(DataParams(url));
    print('game url result: $failureOrData');
    return failureOrData.fold(
      (failure) => failure.message,
      (data) => data,
    );
  }
}
