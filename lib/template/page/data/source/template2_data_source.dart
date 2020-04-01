import 'package:flutter_ty_mobile/core/network/dio_api_service.dart';
import 'package:flutter_ty_mobile/features/users/data/models/user_freezed.dart';
import 'package:meta/meta.dart' show required;

abstract class Template2DataSource {
  /// Calls the service [UserApi.GET_ACCOUNT] endpoint, and decode json into [UserModel].
  Future<String> getString();
  Future<String> getString2(String data);
}

class Template2DataSourceImpl implements Template2DataSource {
  final DioApiService dioApiService;
  final tag = 'Template2DataSource';

  Template2DataSourceImpl({@required this.dioApiService});

  @override
  Future<String> getString() {
      // Simulate network delay
      return Future.delayed(
        Duration(seconds: 3), () => 'fetch success',
      );
  }

  @override
  Future<String> getString2(String data) {
    return Future.delayed(
      Duration(seconds: 3), () => '$data success',
    );
  }
}
