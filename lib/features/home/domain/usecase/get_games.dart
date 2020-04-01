import 'package:flutter_ty_mobile/core/base/usecase_export.dart';
import 'package:flutter_ty_mobile/features/home/data/models/game_data_freezed.dart'
    show GameEntity;
import 'package:flutter_ty_mobile/features/home/domain/entity/platform_game_form.dart';
import 'package:flutter_ty_mobile/features/home/domain/repository/home_repository.dart';

class GetGamesData implements UseCase<List<GameEntity>, DataParams> {
  final HomeRepository homeRepository;
  final tag = 'GetGamesData';

  GetGamesData(this.homeRepository);

  @override
  Future<Either<Failure, List<GameEntity>>> call(DataParams params) async {
    MyLogger.print(msg: 'called games usecase', tag: tag);
    var data = params.data;
    if (!(data is PlatformGameForm)) {
      MyLogger.warn(msg: 'game state data: $data', tag: tag);
      return Left(Failure.dataType());
    } else {
      return await homeRepository.getGames(data as PlatformGameForm);
    }
  }
}
