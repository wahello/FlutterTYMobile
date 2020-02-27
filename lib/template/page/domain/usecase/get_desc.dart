import 'package:flutter_ty_mobile/core/base/usecase_export.dart';
import 'package:flutter_ty_mobile/template/page/domain/repository/template_repository.dart';

class GetDescriptionData implements UseCase<String, NoParams> {
  final Template2Repository template2repository;
  final tag = 'GetDescriptionData';

  GetDescriptionData(this.template2repository);

  @override
  Future<Either<Failure, String>> call(NoParams params) async {
    return await template2repository.fetchString();
  }
}
