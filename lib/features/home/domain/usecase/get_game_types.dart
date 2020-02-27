import 'package:flutter_ty_mobile/features/home/domain/entity/game_types_entity.dart';
import 'package:flutter_ty_mobile/features/home/domain/repository/home_repository.dart';
import 'package:flutter_ty_mobile/core/base/usecase_export.dart';

class GetGameTypesData implements UseCase<GameTypesEntity, NoParams> {
  final HomeRepository homeRepository;

  GetGameTypesData(this.homeRepository);

  @override
  Future<Either<Failure, GameTypesEntity>> call(NoParams params) async {
    MyLogger.print(msg: 'called game-types usecase', tag: 'GetGameTypesData');
    return await homeRepository.getGameTypes();
  }
}
