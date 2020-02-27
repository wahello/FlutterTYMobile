import 'package:flutter_ty_mobile/core/network/handler/data_request_handler.dart'
    show requestList, requestData;
import 'package:flutter_ty_mobile/core/network/dio_api_service.dart';
import 'package:flutter_ty_mobile/features/home/data/form/platform_game_form.dart';
import 'package:flutter_ty_mobile/features/home/data/models/models.dart'
    show BannerModel, GameModel, GameTypesModel, MarqueeModelList;
import 'package:meta/meta.dart' show required;

import 'home_api.dart';

abstract class HomeRemoteDataSource {
  /// Calls the service [HomeApi.BANNER] endpoint, and decode json into [BannerModel].
  Future<List<BannerModel>> getBanners();

  /// Calls the service [HomeApi.MARQUEE] endpoint, and decode json into [MarqueeModelList].
  Future<MarqueeModelList> getMarquees();

  /// Calls the service [HomeApi.GAME_ALL] endpoint, and decode json into [GameTypesModel].
  Future<GameTypesModel> getGameTypes();

  /// Calls the service [HomeApi.GAME_INDEX] endpoint, and decode json into [GameModel].
  Future<List<GameModel>> getGames(PlatformGameForm form);
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final DioApiService dioApiService;
  final tag = 'HomeRemoteDataSource';

  HomeRemoteDataSourceImpl({@required this.dioApiService});

  @override
  Future<List<BannerModel>> getBanners() async {
    return requestList<BannerModel>(
      request: dioApiService.get(HomeApi.BANNER),
      jsonToModel: BannerModel.jsonToBannerModel,
      tag: 'remote-BANNER',
    );
  }

  @override
  Future<MarqueeModelList> getMarquees() async {
    return requestData<MarqueeModelList>(
      request: dioApiService.get(HomeApi.MARQUEE),
      jsonToModel: MarqueeModelList.jsonToMarqueeModelList,
      tag: 'remote-MARQUEE',
    );
  }

  @override
  Future<GameTypesModel> getGameTypes() {
    return requestData<GameTypesModel>(
      request: dioApiService.get(HomeApi.GAME_ALL),
      jsonToModel: GameTypesModel.jsonToGameTypesModel,
      tag: 'remote-GAME_ALL',
    );
  }

  @override
  Future<List<GameModel>> getGames(PlatformGameForm form) {
    return requestList<GameModel>(
      request: dioApiService.postForm(HomeApi.GAME_INDEX, form.toJson()),
      jsonToModel: GameModel.jsonToGameModel,
      tag: 'remote-GAMES',
    );
  }
}
