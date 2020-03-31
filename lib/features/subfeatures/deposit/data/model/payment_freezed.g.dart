// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_freezed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentDataOther _$_$PaymentDataOtherFromJson(Map<String, dynamic> json) {
  return _$PaymentDataOther(
    amount: json['amount'] as String,
    amountOption:
        (json['amountoption'] as List)?.map((e) => e as String)?.toList(),
    amountType: json['amounttype'] as int,
    bankAccountId: json['bankaccountid'] as int,
    gateway: json['gateway'] as int,
    max: json['max'] as int,
    min: json['min'] as int,
    payment: json['payment'] as int,
    pgIndex: json['pgindex'] as int,
    sb: (json['sb'] as List)?.map((e) => e as int)?.toList(),
    type: json['type'] as String,
  );
}

Map<String, dynamic> _$_$PaymentDataOtherToJson(_$PaymentDataOther instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'amountoption': instance.amountOption,
      'amounttype': instance.amountType,
      'bankaccountid': instance.bankAccountId,
      'gateway': instance.gateway,
      'max': instance.max,
      'min': instance.min,
      'payment': instance.payment,
      'pgindex': instance.pgIndex,
      'sb': instance.sb,
      'type': instance.type,
    };

_$PaymentDataLocal _$_$PaymentDataLocalFromJson(Map<String, dynamic> json) {
  return _$PaymentDataLocal(
    bankAccountId: json['bankaccountid'] as int,
    bankAccountNo: json['bankaccountno'] as String,
    bankIndex: json['bankindex'] as int,
    max: _strFromJson(json['max']),
    min: json['min'] as String,
    payment: json['payment'] as String,
    type: json['type'] as String,
  );
}

Map<String, dynamic> _$_$PaymentDataLocalToJson(_$PaymentDataLocal instance) =>
    <String, dynamic>{
      'bankaccountid': instance.bankAccountId,
      'bankaccountno': instance.bankAccountNo,
      'bankindex': instance.bankIndex,
      'max': instance.max,
      'min': instance.min,
      'payment': instance.payment,
      'type': instance.type,
    };
