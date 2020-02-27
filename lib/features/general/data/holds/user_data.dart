import 'package:flutter_ty_mobile/features/users/domain/entity/user_entity.dart';
import 'package:meta/meta.dart' show required;
import 'package:to_string/to_string.dart';

import '../../../../injection_container.dart' show sl;

part 'user_data.g.dart';

UserData get getUserData {
  try {
    return sl.get<UserData>();
  } catch (e) {
    sl.registerSingleton(UserData(isLoggedIn: false));
    return getUserData;
  }
}

@ToString()
class UserData {
  bool isLoggedIn = false;
  UserEntity user;

  UserData({@required this.isLoggedIn, this.user});

  logout() {
    user = null;
    isLoggedIn = false;
  }

  login(UserEntity entity) {
    user = UserEntity(
        account: entity.account,
        credit: entity.credit,
        vip: entity.vip,
        vipName: entity.vipName);
    isLoggedIn = true;
  }

  updateCredit(String credit) {
    var oldUser = user;
    var newUser = UserEntity(
      account: oldUser.account,
      credit: credit,
      vip: oldUser.vip,
      vipName: oldUser.vipName,
    );
    user = newUser;
  }

  @override
  String toString() => _$UserDataToString(this);
}
