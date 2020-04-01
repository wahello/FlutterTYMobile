import 'package:flutter_ty_mobile/core/base/usecase_export.dart';
import 'package:flutter_ty_mobile/core/error/exceptions.dart';
import 'package:flutter_ty_mobile/core/network/dio_api_service.dart';
import 'package:flutter_ty_mobile/core/network/handler/data_request_handler.dart'
    show requestData, requestResponseHeader;
import 'package:flutter_ty_mobile/core/network/handler/request_status_freezed.dart';
import 'package:flutter_ty_mobile/features/users/data/form/login_form.dart';
import 'package:flutter_ty_mobile/features/users/data/models/user_freezed.dart';
import 'package:meta/meta.dart' show required;

import 'user_api.dart';

abstract class UserRemoteDataSource {
  /// Calls the service [UserApi.JWT_CHECK] endpoint to verify [token].
  Future<RequestStatusModel> checkJwt(String token);

  /// Login user and retrieve token, check it with [checkJwt], then calls [getAccount] to return data.
  Future<UserModel> login(UserLoginForm form);

  /// Calls the service [UserApi.GET_ACCOUNT] endpoint, and decode json into [UserModel].
  Future<UserModel> getAccount(String token);
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final DioApiService dioApiService;
  final tag = 'UserRemoteDataSource';

  UserRemoteDataSourceImpl({@required this.dioApiService});

  /// Calls the service [UserApi.LOGIN] endpoint with [form] to get user token.
  Future<DataRequestResult> _getToken(UserLoginForm form) {
    print('start requesting token...');
    return requestResponseHeader(
      request: dioApiService.post(UserApi.LOGIN, data: form.toJson()),
      header: 'set-cookie',
      tag: 'remote-USER',
    );
  }

  @override
  Future<RequestStatusModel> checkJwt(String token) {
    return requestData<RequestStatusModel>(
      request: dioApiService.post(UserApi.JWT_CHECK,
          userToken: token, data: {"href": UserApi.JWT_CHECK_HREF}),
      jsonToModel: RequestStatusModel.jsonToStatusModel,
      tag: 'remote-USER',
    );
  }

  @override
  Future<UserModel> login(UserLoginForm form) async {
    final result = await Future.value(_getToken(form));
    if (result.data == null) throw LoginException(data: result.failedData);
    // get user account info when token was successfully retrieved
    final tokenStr = result.data.toString();
    final token =
        tokenStr.substring(tokenStr.indexOf('=') + 1, tokenStr.indexOf(';'));
    MyLogger.debug(msg: 'user token: $token', tag: tag);

    final validStatus = await Future.value(checkJwt(token));
    if (validStatus.isSuccess) {
      return getAccount(token);
    } else {
      MyLogger.warn(msg: 'user token is not valid: $validStatus', tag: tag);
      return UserModel(status: 'failed', vip: 0);
    }
  }

  @override
  Future<UserModel> getAccount(String token) async {
    return requestData<UserModel>(
      request: dioApiService.get(UserApi.GET_ACCOUNT, userToken: token),
      jsonToModel: UserModel.jsonToUserModel,
      tag: 'remote-USER',
    );
  }
}
