// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deposit_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DepositResult _$_$_DepositResultFromJson(Map<String, dynamic> json) {
  return _$_DepositResult(
    ss: json['ss'] as bool,
    url: json['url'] as String,
    msg: json['msg'] as String ?? '',
    code: json['code'] as int,
    ledger: json['ledgerindex'] as int,
  );
}

Map<String, dynamic> _$_$_DepositResultToJson(_$_DepositResult instance) =>
    <String, dynamic>{
      'ss': instance.ss,
      'url': instance.url,
      'msg': instance.msg,
      'code': instance.code,
      'ledgerindex': instance.ledger,
    };
