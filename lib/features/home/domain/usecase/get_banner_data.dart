import 'package:flutter_ty_mobile/features/home/domain/entity/banner_entity.dart';
import 'package:flutter_ty_mobile/features/home/domain/repository/home_repository.dart';
import 'package:flutter_ty_mobile/core/base/usecase_export.dart';

class GetHomeBannerData implements UseCase<List<BannerEntity>, NoParams> {
  final HomeRepository homeRepository;

  GetHomeBannerData(this.homeRepository);

  @override
  Future<Either<Failure, List<BannerEntity>>> call(NoParams params) async {
    MyLogger.print(msg: 'called banner usecase', tag: 'GetHomeBannerData');
    return await homeRepository.getBanners();
  }
}
