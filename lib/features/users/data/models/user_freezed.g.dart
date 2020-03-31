// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_freezed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$_$_UserModelFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['accountcode', 'creditlimit']);
  return _$_UserModel(
    account: json['accountcode'] as String,
    credit: json['creditlimit'] as String,
    status: json['status'] as String,
    vip: json['vip'] as int,
    vipName: json['vip_name'] as String,
  );
}

Map<String, dynamic> _$_$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'accountcode': instance.account,
      'creditlimit': instance.credit,
      'status': instance.status,
      'vip': instance.vip,
      'vip_name': instance.vipName,
    };
