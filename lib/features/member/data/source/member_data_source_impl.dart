import 'package:flutter_ty_mobile/core/network/dio_api_service.dart';
import 'package:flutter_ty_mobile/core/network/handler/data_request_handler.dart'
    show requestData;
import 'package:flutter_ty_mobile/features/general/data/user_token_storage.dart';
import 'package:flutter_ty_mobile/features/member/data/models/account_limit_model.dart';
import 'package:meta/meta.dart' show required;

import 'member_api.dart';
import 'member_data_source.dart';

class MemberRemoteDataSourceImpl implements MemberRemoteDataSource {
  final DioApiService dioApiService;
  final tag = 'MemberRemoteDataSource';
  String token = '';

  MemberRemoteDataSourceImpl({@required this.dioApiService});

  Future<void> _checkToken(String account) async {
    if (token.isEmpty) {
      token = await Future.value(UserTokenStorage.load(account))
          .then((value) => value.cookie.value);
      print('test member source token: $token');
    }
  }

  @override
  Future<AccountLimitModel> updateCredit(String account) async {
    return await _checkToken(account).then((_) {
      return requestData<AccountLimitModel>(
        request: dioApiService.get(MemberApi.GET_CREDIT, userToken: token),
        jsonToModel: AccountLimitModel.jsonToCreditModel,
        tag: 'remote-MEMBER',
      );
    });
  }
}
