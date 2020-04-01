import 'package:flutter_ty_mobile/core/network/dio_api_service.dart';
import 'package:flutter_ty_mobile/core/network/handler/data_request_handler.dart'
    show requestList;
import 'package:flutter_ty_mobile/features/promo/data/models/promo_freezed.dart';
import 'package:flutter_ty_mobile/features/promo/data/source/promo_api.dart';
import 'package:meta/meta.dart' show required;

abstract class PromoRemoteDataSource {
  Future<List<PromoModel>> getPromos();
}

class PromoRemoteDataSourceImpl implements PromoRemoteDataSource {
  final DioApiService dioApiService;
  final tag = 'PromoRemoteDataSource';

  PromoRemoteDataSourceImpl({@required this.dioApiService});

  @override
  Future<List<PromoModel>> getPromos() {
    return requestList<PromoModel>(
      request: dioApiService.get(PromoApi.GET_PROMO),
      jsonToModel: PromoModel.jsonToPromoModel,
      tag: 'remote-PROMO',
    );
  }
}
