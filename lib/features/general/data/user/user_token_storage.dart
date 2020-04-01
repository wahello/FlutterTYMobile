import 'package:flutter_ty_mobile/core/data/hive_actions.dart' show getHiveBox;
import 'package:flutter_ty_mobile/core/internal/global.dart';
import 'package:flutter_ty_mobile/core/network/dio_api_service.dart';
import 'package:flutter_ty_mobile/features/general/data/user/hive_cookie.dart';
import 'package:flutter_ty_mobile/features/users/data/source/user_api.dart';
import 'package:hive/hive.dart' show Box;

import '../../../../mylogger.dart';

/// Store user token in [Hive}
///
///@author H.C.CHIANG
///@version 2020/2/18
class UserTokenStorage {
  static String tag = 'UserCookie';

  static Future<void> save(String account) async {
    Box box = await getHiveBox(Global.CACHED_COOKIE);
    var cookies = DioApiService.loadCookies(
        Uri.parse('${Global.TEST_BASE_URL}${UserApi.LOGIN}'));
//    for (var value in cookies) {
//      print('cookie name: ${value.name}');
//    }
    var tokenCookie =
        cookies.singleWhere((element) => element.name == 'token_mobile');
    print('cookie token length: ${tokenCookie.value.length}');
    try {
      // TODO: Need to check if saving token to hive is necessary or the RAM cookie will suffice
      box.put(account, HiveCookieEntity(account: account, cookie: tokenCookie));
      MyLogger.print(msg: 'save token in HIVE: ${box.values.length}', tag: tag);
    } catch (e) {
      MyLogger.warn(msg: 'save token in HIVE has error', error: e, tag: tag);
    }
    box.compact();
    return box.close();
  }

  static Future<HiveCookieEntity> load(String account) async {
    Box box = await getHiveBox(Global.CACHED_COOKIE);
    var entity;
    if (box.isNotEmpty) {
      try {
        entity = box.get(account) as HiveCookieEntity;
      } catch (e) {
        MyLogger.warn(msg: 'get token from HIVE has error', error: e, tag: tag);
      }
    }
    box.close();
    print('user token: $entity');
    return entity;
  }

  static Future<void> clear() async {
    Box box = await getHiveBox(Global.CACHED_COOKIE);
    box.clear();
    box.close();
  }
}
