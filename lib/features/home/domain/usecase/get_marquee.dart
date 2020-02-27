import 'package:flutter_ty_mobile/features/home/domain/entity/marquee_entity.dart';
import 'package:flutter_ty_mobile/features/home/domain/repository/home_repository.dart';
import 'package:flutter_ty_mobile/core/base/usecase_export.dart';

class GetHomeMarqueeData implements UseCase<List<MarqueeEntity>, NoParams> {
  final HomeRepository homeRepository;

  GetHomeMarqueeData(this.homeRepository);

  @override
  Future<Either<Failure, List<MarqueeEntity>>> call(NoParams params) async {
    MyLogger.print(msg: 'called marquee usecase', tag: 'GetHomeMarqueeData');
    return await homeRepository.getMarquees();
  }
}
