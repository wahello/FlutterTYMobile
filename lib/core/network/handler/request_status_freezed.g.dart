// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_status_freezed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestStatusModel _$_$_RequestStatusModelFromJson(
    Map<String, dynamic> json) {
  return _$_RequestStatusModel(
    status: json['status'] as String,
    msg: _msgFromJson(json['msg']),
  );
}

Map<String, dynamic> _$_$_RequestStatusModelToJson(
        _$_RequestStatusModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
    };
