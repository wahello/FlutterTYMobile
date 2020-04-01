import 'package:flutter_ty_mobile/core/network/dio_api_service.dart';
import 'package:flutter_ty_mobile/core/network/handler/data_request_handler.dart'
    show requestData;
import 'package:flutter_ty_mobile/core/network/handler/request_status_freezed.dart';
import 'package:flutter_ty_mobile/features/general/data/user/user_token_storage.dart';
import 'package:flutter_ty_mobile/features/router/route_user_streams.dart';
import 'package:flutter_ty_mobile/features/subfeatures/deposit/data/form/deposit_form.dart';
import 'package:flutter_ty_mobile/features/subfeatures/deposit/data/model/deposit_result.dart';
import 'package:flutter_ty_mobile/features/subfeatures/deposit/data/model/payment_promo.dart';
import 'package:flutter_ty_mobile/features/subfeatures/deposit/data/model/payment_raw.dart';
import 'package:flutter_ty_mobile/features/users/data/source/user_api.dart';
import 'package:flutter_ty_mobile/mylogger.dart';
import 'package:meta/meta.dart' show required;

import 'deposit_api.dart';

abstract class DepositRemoteDataSource {
  /// Calls the service [UserApi.JWT_CHECK] endpoint to verify [token].
  Future<RequestStatusModel> checkJwt(String token);

  /// Calls the service [DepositApi.GET_PAYMENT] endpoint to get [PaymentRaw].
  Future<PaymentRaw> getPayment();

  /// Calls the service [DepositApi.GET_PAYMENT_PROMO] endpoint to get [PaymentPromoTypeJson].
  Future<PaymentPromoTypeJson> getPaymentPromo();

  Future<DepositResult> postDeposit(DepositDataForm form);
}

class DepositRemoteDataSourceImpl implements DepositRemoteDataSource {
  final DioApiService dioApiService;
  final tag = 'DepositRemoteDataSource';
  String token = '';

  DepositRemoteDataSourceImpl({@required this.dioApiService});

  ///
  /// Check token to confirm user action is valid
  ///
  Future<void> _checkToken() async {
    if (token.isEmpty) {
      String account = getRouteUserStreams.lastUser.currentUser.account;
      token = await Future.value(UserTokenStorage.load(account))
          .then((value) => value.cookie.value);
      print('test member source token: $token');
    }
  }

  @override
  Future<RequestStatusModel> checkJwt(String token) async {
    return await _checkToken().then((_) {
      return requestData<RequestStatusModel>(
        request: dioApiService.post(UserApi.JWT_CHECK,
            userToken: token, data: {"href": DepositApi.JWT_CHECK_HREF}),
        jsonToModel: RequestStatusModel.jsonToStatusModel,
        tag: 'remote-JWT',
      );
    });
  }

  @override
  Future<PaymentRaw> getPayment() async {
    final validStatus = await Future.value(checkJwt(token));
    if (validStatus.isSuccess) {
      return requestData<PaymentRaw>(
        request: dioApiService.get(DepositApi.GET_PAYMENT, userToken: token),
        jsonToModel: PaymentRaw.jsonToPaymentRaw,
        tag: 'remote-DEPOSIT',
      );
    } else {
      MyLogger.warn(msg: 'user token is not valid: $validStatus', tag: tag);
      return PaymentRaw();
    }
  }

  @override
  Future<PaymentPromoTypeJson> getPaymentPromo() {
    return requestData<PaymentPromoTypeJson>(
      request: dioApiService.get(DepositApi.GET_PAYMENT_PROMO),
      jsonToModel: PaymentPromo.jsonToPaymentPromo,
      tag: 'remote-DEPOSIT',
    );
  }

  @override
  Future<DepositResult> postDeposit(DepositDataForm form) {
    return requestData<DepositResult>(
      request: dioApiService.post(DepositApi.POST_DEPOSIT, data: form.toJson()),
      jsonToModel: DepositResult.jsonToDepositResult,
      tag: 'remote-DEPOSIT',
    );
  }
}
