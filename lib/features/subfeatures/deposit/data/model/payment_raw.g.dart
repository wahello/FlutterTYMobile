// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_raw.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentRaw _$_$_PaymentRawFromJson(Map<String, dynamic> json) {
  return _$_PaymentRaw(
    bankJson: json['1'] ?? '',
    onlineJson: json['2'] ?? '',
    wechatJson: json['3'] ?? '',
    quickJson: json['4'] ?? '',
    aliJson: json['5'] ?? '',
    unionJson: json['7'] ?? '',
    virtualJson: json['8'] ?? '',
  );
}

Map<String, dynamic> _$_$_PaymentRawToJson(_$_PaymentRaw instance) =>
    <String, dynamic>{
      '1': instance.bankJson,
      '2': instance.onlineJson,
      '3': instance.wechatJson,
      '4': instance.quickJson,
      '5': instance.aliJson,
      '7': instance.unionJson,
      '8': instance.virtualJson,
    };

_$_PaymentRawNamed _$_$_PaymentRawNamedFromJson(Map<String, dynamic> json) {
  return _$_PaymentRawNamed(
    bankJson: json['localbank'] ?? '',
    onlineJson: json['onlinepay'] ?? '',
    wechatJson: json['wechatpay'] ?? '',
    quickJson: json['quickpay'] ?? '',
    aliJson: json['alipay'] ?? '',
    unionJson: json['unionpay'] ?? '',
    virtualJson: json['vc'] ?? '',
  );
}

Map<String, dynamic> _$_$_PaymentRawNamedToJson(_$_PaymentRawNamed instance) =>
    <String, dynamic>{
      'localbank': instance.bankJson,
      'onlinepay': instance.onlineJson,
      'wechatpay': instance.wechatJson,
      'quickpay': instance.quickJson,
      'alipay': instance.aliJson,
      'unionpay': instance.unionJson,
      'vc': instance.virtualJson,
    };
