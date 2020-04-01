import 'package:flutter_ty_mobile/core/base/usecase_export.dart';
import 'package:flutter_ty_mobile/features/general/widgets/cached_network_image.dart';
import 'package:flutter_ty_mobile/features/home/data/models/banner_freezed.dart'
    show BannerEntity;

class GetHomeBannerImage implements UseCase<List<dynamic>, DataParams> {
  final tag = 'GetHomeBannerImage';

  GetHomeBannerImage();

  @override
  Future<Either<Failure, List<dynamic>>> call(DataParams params) async {
    MyLogger.print(msg: 'called banner image usecase...', tag: tag);
    var data = params.data;
    if (!(data is List) || (data as List).isEmpty) {
      MyLogger.warn(msg: 'banner state data: $data', tag: tag);
      return Left(Failure.dataType());
    } else {
      try {
        final list = data as List<BannerEntity>;
        List images = new List();
        await Future.forEach(list, (banner) async {
          final url = (banner as BannerEntity).pic;
          await networkImageWidget(url, fillContainer: true)
              .then((widget) => images.add(widget));
        });
        return Right(images);
      } on Exception catch (e) {
        MyLogger.error(msg: 'banner image exception', tag: tag, error: e);
        return Left(Failure.cachedFile());
      }
//      try {
//        final list = data as List<BannerEntity>;
//        final prefixUrl = Global.CURRENT_SERVICE;
//        List<dynamic> images = new List();
//        // check each banner for cached image file
//        await Future.forEach(list, (banner) async {
//          final url = (banner as BannerEntity).picMobile;
//          await checkCachedImage('$prefixUrl$url')
//              .then((item) => images.add(item));
//        });
//        print('banner bloc images: $images');
//        return Right(images);
//      } on Exception catch (e) {
//        MyLogger.error(msg: 'banner image exception', tag: tag, error: e);
//        return Left(Failure.cachedFile());
//      }
    }
  }
}
