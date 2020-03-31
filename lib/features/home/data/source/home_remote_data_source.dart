import 'dart:io' show Cookie;

import 'package:flutter_ty_mobile/core/internal/global.dart';
import 'package:flutter_ty_mobile/core/network/dio_api_service.dart';
import 'package:flutter_ty_mobile/core/network/handler/data_request_handler.dart'
    show requestData, requestList, requestRawString;
import 'package:flutter_ty_mobile/features/home/data/models/game_types_freezed.dart';
import 'package:flutter_ty_mobile/features/home/data/models/models.dart'
    show BannerModel, GameModel, MarqueeModelList;
import 'package:flutter_ty_mobile/features/home/domain/entity/platform_game_form.dart';
import 'package:flutter_ty_mobile/features/users/data/source/user_api.dart';
import 'package:meta/meta.dart' show required;

import 'home_api.dart';

abstract class HomeRemoteDataSource {
  /// Calls the service [HomeApi.BANNER] endpoint, and decode json into [BannerModel].
  Future<List<BannerModel>> getBanners();

  /// Calls the service [HomeApi.MARQUEE] endpoint, and decode json into [MarqueeModelList].
  Future<MarqueeModelList> getMarquees();

  /// Calls the service [HomeApi.GAME_ALL] endpoint, and decode json into [GameTypes].
  Future<GameTypes> getGameTypes();

  /// Calls the service [HomeApi.GAME_INDEX] endpoint, and decode json into [GameModel].
  Future<List<GameModel>> getGames(PlatformGameForm form);

  /// Calls the service [HomeApi.GAME_URL] endpoint.
  Future<String> getGameUrl(String requestUrl);
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
  Future<GameTypes> getGameTypes() {
    return requestData<GameTypes>(
      request: dioApiService.post(HomeApi.GAME_ALL, data: {
        "accountid": "",
      }),
      jsonToModel: GameTypes.jsonToGameTypes,
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

  @override
  Future<String> getGameUrl(String requestUrl) {
    List<Cookie> cookies = DioApiService.loadCookies(
        Uri.parse('${Global.CURRENT_SERVICE}${UserApi.LOGIN}'));
    print('Cookies: $cookies');

    Map<String, dynamic> headers = new Map();
    cookies.forEach((element) {
      headers[element.name] = element.value;
      if (element.name == 'token_mobile')
        headers.putIfAbsent('JWT-TOKEN', () => element.value);
    });
    print('Mapped Cookies: $headers');

    return requestRawString(
      request:
          dioApiService.get('${HomeApi.GAME_URL}$requestUrl', headers: headers),
      tag: 'remote-GAME_URL',
    );
//    return requestRawString(
//      request: dioApiService.get('${HomeApi.GAME_OPEN}$requestUrl',
//          headers: headers),
//      tag: 'remote-GAME_OPEN',
//    );
  }
}
