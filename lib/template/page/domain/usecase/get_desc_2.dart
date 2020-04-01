import 'package:flutter_ty_mobile/core/base/usecase_export.dart';
import 'package:flutter_ty_mobile/template/page/domain/repository/template_repository.dart';

class GetDescriptionData2 implements UseCase<String, DataParams> {
  final Template2Repository template2repository;
  final tag = 'GetDescriptionData';

  GetDescriptionData2(this.template2repository);

  @override
  Future<Either<Failure, String>> call(DataParams params) async {
    MyLogger.print(msg: 'called user usecase', tag: tag);
    var data = params.data;
    if (!(data is String)) {
      MyLogger.warn(msg: 'usecase data type: $data', tag: tag);
      return Left(Failure.dataType());
    } else {
      return await template2repository.fetchString2(data);
    }
  }
}
