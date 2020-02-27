import 'package:flutter_ty_mobile/core/internal/local_strings.dart';
import 'package:flutter_ty_mobile/features/general/data/entity/request_failed_model.dart';
import 'package:super_enum/super_enum.dart';

part 'failures.g.dart';

@superEnum
enum _Failure {
  @object
  Network,
  @object
  NetworkLocation,
  @object
  Server,
  @object
  DataSource,
  @object
  DataType,
  @object
  CachedFile,
  @object
  Internal,
  @UseClass(RequestFailedModel)
  Login,
}

extension FailureExtension on Failure {
  int get typeIndex => this._type.index;
  String get message {
    switch (this._type) {
      case _Failure.Network:
        return localeStr.messageErrorNoNetwork;
      case _Failure.NetworkLocation:
        return localeStr.messageWarnNetworkLocation;
      case _Failure.Server:
        return localeStr.messageErrorNoServerConnection;
      case _Failure.DataSource:
        return localeStr.messageErrorServerError;
      case _Failure.Login:
        return localeStr.messageLoginFailed;
      case _Failure.CachedFile:
        return localeStr.messageErrorCachedFile;
      case _Failure.Internal:
        return localeStr.messageErrorInternal;
      default:
        return _OTHER_FAILURE_MESSAGE;
    }
  }
}

const String _OTHER_FAILURE_MESSAGE = 'Unexpected error';
