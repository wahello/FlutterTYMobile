import 'package:flutter_ty_mobile/features/general/data/entity/request_failed_model.dart';
import 'package:to_string/to_string.dart';

part 'data_request_result.g.dart';

@ToString()
class DataRequestResult {
  dynamic data;
  RequestFailedModel failedData;

  DataRequestResult({this.data, this.failedData});

  @override
  String toString() => _$DataRequestResultToString(this);
}
