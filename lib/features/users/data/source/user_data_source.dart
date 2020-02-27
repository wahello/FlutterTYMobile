import 'package:flutter_ty_mobile/core/base/usecase_export.dart';
import 'package:flutter_ty_mobile/core/error/exceptions.dart';
import 'package:flutter_ty_mobile/core/network/dio_api_service.dart';
import 'package:flutter_ty_mobile/core/network/handler/data_request_handler.dart'
    show requestData, requestResponseHeader;
import 'package:flutter_ty_mobile/core/network/handler/data_request_result.dart';
import 'package:flutter_ty_mobile/features/users/data/form/login_form.dart';
import 'package:flutter_ty_mobile/features/users/data/models/user_model.dart';
import 'package:meta/meta.dart' show required;

import 'user_api.dart';

abstract class UserRemoteDataSource {
  /// Login user and retrieve token, then calls [getAccount] to return data.
  Future<UserModel> login(UserLoginForm form);

  /// Calls the service [UserApi.GET_ACCOUNT] endpoint, and decode json into [UserModel].
  Future<UserModel> getAccount(String token);
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final DioApiService dioApiService;
  final tag = 'UserRemoteDataSource';

  UserRemoteDataSourceImpl({@required this.dioApiService});

  Future<DataRequestResult> _getToken(UserLoginForm form) {
    print('start requesting token...');
    return requestResponseHeader(
      request: dioApiService.post(UserApi.LOGIN, data: form.toJson()),
      header: 'set-cookie',
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
    return getAccount(token);
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
