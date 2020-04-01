// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_limit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountLimitModel _$_$_AccountLimitModelFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['accountcode', 'unlimit']);
  return _$_AccountLimitModel(
    account: json['accountcode'] as String,
    credit: json['unlimit'] as String,
  );
}

Map<String, dynamic> _$_$_AccountLimitModelToJson(
        _$_AccountLimitModel instance) =>
    <String, dynamic>{
      'accountcode': instance.account,
      'unlimit': instance.credit,
    };
