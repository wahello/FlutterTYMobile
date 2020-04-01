import 'dart:convert' show json;

import 'package:flutter_ty_mobile/features/subfeatures/deposit/data/model/payment_freezed.dart';
import 'package:flutter_ty_mobile/mylogger.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_raw.freezed.dart';
part 'payment_raw.g.dart';

@freezed
abstract class PaymentRaw with _$PaymentRaw {
  const factory PaymentRaw({
    @JsonKey(name: '1', defaultValue: '') dynamic bankJson,
    @JsonKey(name: '2', defaultValue: '') dynamic onlineJson,
    @JsonKey(name: '3', defaultValue: '') dynamic wechatJson,
    @JsonKey(name: '4', defaultValue: '') dynamic quickJson,
    @JsonKey(name: '5', defaultValue: '') dynamic aliJson,
    @JsonKey(name: '7', defaultValue: '') dynamic unionJson,
    @JsonKey(name: '8', defaultValue: '') dynamic virtualJson,
  }) = _PaymentRaw;

  const factory PaymentRaw.named({
    @JsonKey(name: 'localbank', defaultValue: '') dynamic bankJson,
    @JsonKey(name: 'onlinepay', defaultValue: '') dynamic onlineJson,
    @JsonKey(name: 'wechatpay', defaultValue: '') dynamic wechatJson,
    @JsonKey(name: 'quickpay', defaultValue: '') dynamic quickJson,
    @JsonKey(name: 'alipay', defaultValue: '') dynamic aliJson,
    @JsonKey(name: 'unionpay', defaultValue: '') dynamic unionJson,
    @JsonKey(name: 'vc', defaultValue: '') dynamic virtualJson,
  }) = _PaymentRawNamed;

  @override
  factory PaymentRaw.fromJson(Map<String, dynamic> json) {
    if (json.keys.first.length == 1)
      json['runtimeType'] = 'default';
    else
      json['runtimeType'] = 'named';
    return _$PaymentRawFromJson(json);
  }

  static PaymentRaw jsonToPaymentRaw(Map<String, dynamic> jsonMap) {
    jsonMap['runtimeType'] = 'default';
    return _$PaymentRawFromJson(jsonMap);
  }

  static PaymentRaw jsonToPaymentRawNamed(Map<String, dynamic> jsonMap) {
    jsonMap['runtimeType'] = 'named';
    return _$PaymentRawFromJson(jsonMap);
  }
}

extension PaymentRawExtension on PaymentRaw {
  Map<int, List<PaymentFreezed>> get mapDataList {
    Map<int, List<PaymentFreezed>> map = new Map();
    map[1] = this.getLocalDataList;
    map[2] = this.getOtherDataList(2, this.onlineJson);
    map[3] = this.getOtherDataList(3, this.wechatJson);
    map[4] = this.getOtherDataList(4, this.quickJson);
    map[5] = this.getOtherDataList(5, this.aliJson);
    map[7] = this.getOtherDataList(7, this.unionJson);
    map[8] = this.getOtherDataList(8, this.virtualJson);
    map.removeWhere((key, value) => value.isEmpty);
    return map;
  }

  List<PaymentDataLocal> get getLocalDataList {
    try {
      if (bankJson.toString().isEmpty) {
        MyLogger.info(msg: 'no json string', tag: 'PaymentRaw');
        print('no json string');
        return [];
      }

      Map<String, dynamic> jsonMap = json.decode(json.encode(bankJson));
      print('payment map keys: ${jsonMap.keys}, type: ${jsonMap.runtimeType}');

      if (jsonMap == null || jsonMap.keys.length < 1) {
        MyLogger.warn(msg: 'PaymentRaw map has no keys', tag: 'PaymentRaw');
        print('PaymentRaw map has no keys!!');
        return [];
      }

      List<PaymentDataLocal> list = jsonMap.keys.map((k) {
//        print('parsing: ${jsonMap[k]}');
//        print('parsed: ${PaymentFreezed.jsonToPaymentDataLocal(jsonMap[k])}');
        return PaymentFreezed.jsonToPaymentDataLocal(jsonMap[k]);
      }).toList();
      return list;
    } catch (e) {
      MyLogger.error(
          msg: 'get Local Payment Data List has exception',
          error: e,
          tag: 'PaymentRaw');
      print('error: $e');
      return [];
    }
  }

  List<PaymentDataOther> getOtherDataList(int key, jsonStr) {
    try {
      if (jsonStr.toString().isEmpty) {
        MyLogger.debug(msg: 'empty json string, key: $key', tag: 'PaymentRaw');
        print('empty json string, key: $key');
        return [];
      }

      Map<String, dynamic> jsonMap = json.decode(json.encode(jsonStr));
      print('payment map keys: ${jsonMap.keys}, type: ${jsonMap.runtimeType}');

      if (jsonMap == null || jsonMap.keys.length < 1) {
        MyLogger.warn(msg: 'PaymentRaw map has no keys', tag: 'PaymentRaw');
        print('PaymentRaw map has no keys!!');
        return [];
      }

      List<PaymentDataOther> list = jsonMap.keys.map((k) {
//        print('parsing: ${jsonMap[k]}');
//        print('parsed: ${PaymentFreezed.jsonToPaymentDataOther(jsonMap[k])}');
        return PaymentFreezed.jsonToPaymentDataOther(jsonMap[k]);
      }).toList();
      return list;
    } catch (e) {
      MyLogger.error(
          msg: 'get Other Payment Data List has exception, key: $key',
          error: e,
          tag: 'PaymentRaw');
      print('error: $e');
      return [];
    }
  }
}
