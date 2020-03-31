import 'package:flutter_ty_mobile/core/base/usecase_export.dart';
import 'package:flutter_ty_mobile/features/home/data/models/game_types_freezed.dart';
import 'package:flutter_ty_mobile/features/home/domain/repository/home_repository.dart';

class GetGameTypesData implements UseCase<GameTypes, NoParams> {
  final HomeRepository homeRepository;

  GetGameTypesData(this.homeRepository);

  @override
  Future<Either<Failure, GameTypes>> call(NoParams params) async {
    MyLogger.print(msg: 'called game-types usecase', tag: 'GetGameTypesData');
    return await homeRepository.getGameTypes();
  }
}
