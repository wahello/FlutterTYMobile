import 'package:flutter_ty_mobile/core/base/usecase_export.dart';
import 'package:flutter_ty_mobile/features/home/domain/repository/home_repository.dart';

class GetGameUrl implements UseCase<String, DataParams> {
  final HomeRepository homeRepository;

  GetGameUrl(this.homeRepository);

  @override
  Future<Either<Failure, String>> call(DataParams params) async {
    MyLogger.print(msg: 'called game-url usecase', tag: 'GetGameUrl');
    return await homeRepository.getGameUrl(params.data);
  }
}
