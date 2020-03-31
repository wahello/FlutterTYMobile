import 'package:flutter_ty_mobile/core/repository_export.dart';
import 'package:flutter_ty_mobile/features/member/data/models/account_limit_model.dart';
import 'package:flutter_ty_mobile/features/member/data/source/member_data_source.dart';

import 'member_repository.dart';

class MemberRepositoryImpl implements MemberRepository {
  final tag = 'MemberRepository';
  final MemberRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  MemberRepositoryImpl({
    @required this.remoteDataSource,
    @required this.networkInfo,
  });

  @override
  Future<String> updateCredit(String account) async {
    final connected = await networkInfo.isConnected;
    print('network connected: $connected');
    if (connected) {
      final result = await handleResponse<AccountLimitModel>(
          remoteDataSource.updateCredit(account));
      return result.fold((failure) => 'NaN', (model) => model.credit);
    }
    return 'NaN';
  }
}
