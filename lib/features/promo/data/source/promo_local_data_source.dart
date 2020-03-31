import 'package:flutter_ty_mobile/core/data/hive_actions.dart';
import 'package:flutter_ty_mobile/core/error/exceptions.dart' show HiveDataException;
import 'package:flutter_ty_mobile/features/promo/data/models/promo_freezed.dart';
import 'package:flutter_ty_mobile/mylogger.dart';

abstract class PromoLocalDataSource {
  void closeBox();

  /// Gets the cached [PromoEntity] which was gotten the last time
  /// the user had an internet connection.
  ///
  /// Throws [HiveDataException] if no cached data is present.
  Future<List<PromoEntity>> getCachedPromos();
  Future<void> cachePromos(List<PromoEntity> bannersToCache);
}

const CACHED_BOX_PROMO = 'CACHED_PROMO';

class PromoLocalDataSourceImpl implements PromoLocalDataSource {
  final tag = 'PromoLocalDataSource';
  final logKey = 'promo';

  @override
  void closeBox() => closeHiveBox(CACHED_BOX_PROMO);

  @override
  Future<List<PromoEntity>> getCachedPromos() async {
    try {
      var box = await getHiveBox(CACHED_BOX_PROMO);
      return box.getData<PromoEntity>(logKeyword: logKey);
    } on HiveDataException {
      return [];
    } catch (e) {
      MyLogger.error(
          msg: 'box get data has exception: $e', tag: tag, error: e, stackTrace: e);
      return [];
    }
  }

  @override
  Future<void> cachePromos(List<PromoEntity> promos) async {
    var box = await getHiveBox(CACHED_BOX_PROMO);
    if (box.hasData()) {
      promos.addNewToHive(
          box: box, identifier: logKey, filterKey: 'id');
    } else {
      promos.addAllToHive(box: box, identifier: logKey);
    }
    MyLogger.print(
        msg: 'cached promos in HIVE: ${box.values.length}', tag: tag);
    return box.compact();
  }
}
