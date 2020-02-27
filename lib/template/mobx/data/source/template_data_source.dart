import 'package:flutter_ty_mobile/core/network/dio_api_service.dart';
import 'package:flutter_ty_mobile/core/network/handler/data_request_handler.dart'
    show requestData;
import 'package:flutter_ty_mobile/template/mobx/data/models/template_model.dart';
import 'package:flutter_ty_mobile/template/mobx/data/source/template_api.dart';
import 'package:meta/meta.dart' show required;

abstract class TemplateRemoteDataSource {
  Future<TemplateModel> testApi();
}

class TemplateRemoteDataSourceImpl implements TemplateRemoteDataSource {
  final DioApiService dioApiService;
  final tag = 'MemberRemoteDataSource';
  String token = '';

  TemplateRemoteDataSourceImpl({@required this.dioApiService});

  @override
  Future<TemplateModel> testApi() {
    return requestData<TemplateModel>(
      request: dioApiService.get(TemplateApi.GET_VIP_PIC),
      jsonToModel: TemplateModel.jsonToModel,
      tag: 'remote-TEMP',
    );
  }
}
