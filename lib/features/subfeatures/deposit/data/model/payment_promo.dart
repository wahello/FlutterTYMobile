import 'dart:convert';

import 'package:flutter_ty_mobile/core/base/usecase_export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_promo.freezed.dart';
part 'payment_promo.g.dart';

@freezed
abstract class PaymentPromo with _$PaymentPromo {
  const factory PaymentPromo({
    @JsonKey(name: '1', defaultValue: '') dynamic local,
    @JsonKey(name: '2', defaultValue: '') dynamic other,
  }) = PaymentPromoTypeJson;

  const factory PaymentPromo.data({
    @JsonKey(name: 'promoid', required: true) int promoId,
    @JsonKey(name: 'promodesc', required: true, defaultValue: '?')
        String promoDesc,
//    @JsonKey(name: 'min_deposit') int minDeposit,
//    String type,
//    int percentage,
//    @JsonKey(name: 'max_promo_amt') int maxPromoAmt,
//    int multiply,
//    String dtype,
//    dynamic sequence,
//    @JsonKey(name: 'featureindex') String featureIndex,
  }) = PaymentPromoData;

  @override
  factory PaymentPromo.fromJson(Map<String, dynamic> json) {
    if (json.keys.first.length == 1)
      json['runtimeType'] = 'default';
    else
      json['runtimeType'] = 'data';
    return _$PaymentPromoFromJson(json);
  }

  static PaymentPromoTypeJson jsonToPaymentPromo(Map<String, dynamic> jsonMap) {
    jsonMap['runtimeType'] = 'default';
    return _$PaymentPromoFromJson(jsonMap);
  }

  static PaymentPromoData jsonToPaymentPromoData(Map<String, dynamic> jsonMap) {
    jsonMap['runtimeType'] = 'data';
    return _$PaymentPromoFromJson(jsonMap);
  }
}

extension PaymentPromoTypeJsonExtension on PaymentPromoTypeJson {
  List<PaymentPromoData> getDataList(bool localData) {
    try {
      if ((localData && local.toString().isEmpty) ||
          (!localData && other.toString().isEmpty)) {
        MyLogger.info(msg: 'no json string', tag: 'PaymentPromo');
//        print('no json string');
        return [];
      }

      Map<String, dynamic> jsonMap = (localData)
          ? json.decode(json.encode(local))
          : json.decode(json.encode(other));
      print(
          'deposit promo map keys: ${jsonMap.keys}, type: ${jsonMap.runtimeType}');

      if (jsonMap == null || jsonMap.keys.length < 1) {
        MyLogger.warn(msg: 'PaymentPromo map has no keys', tag: 'PaymentPromo');
//        print('PaymentPromo map has no keys!!');
        return [];
      }

      List<PaymentPromoData> list = jsonMap.keys.map((k) {
//        print('parsing: ${jsonMap[k]}');
//        print('parsed: ${PaymentPromo.jsonToPaymentPromoData(jsonMap[k])}');
        return PaymentPromo.jsonToPaymentPromoData(jsonMap[k]);
      }).toList();
      return list;
    } catch (e) {
      MyLogger.error(
          msg: 'get Payment Promo Data List has exception',
          error: e,
          tag: 'PaymentPromo');
//      print('error: $e');
      return [];
    }
  }
}
