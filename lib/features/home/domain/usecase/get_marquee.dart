import 'package:flutter_ty_mobile/core/base/usecase_export.dart';
import 'package:flutter_ty_mobile/features/home/data/models/marquee_freezed.dart'
    show MarqueeEntity;
import 'package:flutter_ty_mobile/features/home/domain/repository/home_repository.dart';

class GetHomeMarqueeData implements UseCase<List<MarqueeEntity>, NoParams> {
  final HomeRepository homeRepository;

  GetHomeMarqueeData(this.homeRepository);

  @override
  Future<Either<Failure, List<MarqueeEntity>>> call(NoParams params) async {
    MyLogger.print(msg: 'called marquee usecase', tag: 'GetHomeMarqueeData');
    return await homeRepository.getMarquees();
  }
}
