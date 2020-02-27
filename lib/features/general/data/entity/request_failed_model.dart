import 'package:to_string/to_string.dart';

part 'request_failed_model.g.dart';

@ToString()
class RequestFailedModel {
    String msg;
    String status;

    RequestFailedModel({this.msg, this.status});

    factory RequestFailedModel.fromJson(Map<String, dynamic> json) {
        return RequestFailedModel(
            msg: json['msg'], 
            status: json['status'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['msg'] = this.msg;
        data['status'] = this.status;
        return data;
    }

    static RequestFailedModel jsonToFailedModel(Map<String, dynamic> jsonMap) =>
        RequestFailedModel.fromJson(jsonMap);

    @override
    String toString() => _$RequestFailedModelToString(this);
}