import 'package:flutter_ty_mobile/features/member/data/models/account_limit_model.dart';

abstract class MemberRemoteDataSource {
  Future<AccountLimitModel> updateCredit(String account);
}
