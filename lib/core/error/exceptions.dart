import 'package:flutter_ty_mobile/core/network/handler/request_status_freezed.dart' show RequestStatusModel;

class NetworkException implements Exception {}

class LocationException implements Exception {}

class ServerException implements Exception {}

class RequestTimeoutException implements ServerException {
  final String message;
  RequestTimeoutException([this.message = ""]);
  @override
  String toString() {
    if (message.isEmpty) return super.toString();
    return 'RequestTimeoutException!! msg:$message';
  }
}

class RequestCanceledException implements ServerException {}

class ResponseException implements ServerException {}

class DownloadException implements ServerException {}

class UnknownException implements ServerException {}

class LoginException implements Exception {
  final RequestStatusModel data;
  LoginException({this.data});
  @override
  String toString() {
    if (data != null) return super.toString();
    return 'LoginException!! data:$data';
  }
}

class JsonFormatException implements Exception {
  final String json;
  JsonFormatException(this.json);
  @override
  String toString() {
    return 'JsonFormatException!!\njson data: $json';
  }
}

class MapJsonDataException implements Exception {}

class EmptyDataException implements Exception {}

class HiveDataException implements Exception {}

class UnknownConditionException implements Exception {}
