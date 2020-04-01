import 'package:flutter_ty_mobile/core/base/usecase_export.dart';
import 'package:flutter_ty_mobile/features/home/data/models/banner_freezed.dart'
    show BannerEntity;
import 'package:flutter_ty_mobile/features/home/domain/repository/home_repository.dart';

class GetHomeBannerData implements UseCase<List<BannerEntity>, NoParams> {
  final HomeRepository homeRepository;

  GetHomeBannerData(this.homeRepository);

  @override
  Future<Either<Failure, List<BannerEntity>>> call(NoParams params) async {
    MyLogger.print(msg: 'called banner usecase', tag: 'GetHomeBannerData');
    return await homeRepository.getBanners();
  }
}
