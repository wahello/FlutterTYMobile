import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ty_mobile/features/subfeatures/deposit/data/model/payment_freezed.dart';
import 'package:flutter_ty_mobile/features/subfeatures/deposit/data/model/payment_raw.dart';

import '../../../../fixtures/fixture_reader.dart';

/// IMPORTANT:
/// Need to manually block or change PaymentEnum values that are using
/// localeStr to constant string or test will failed
///
void main() {
  test('test json to model data list', () {
    final map = json.decode(fixture('deposit/payment.json'));
    PaymentRaw model = PaymentRaw.fromJson(map);
    print(json.encode(model.bankJson));
    var localMap = json.decode(json.encode(model.bankJson));
    print('${localMap.keys}, runtimetype: ${localMap.runtimeType}');

    var data = localMap.keys.map((k) {
      print('parsing: ${localMap[k]}');
      print('parsed: ${PaymentFreezed.fromJson(localMap[k])}');
      return PaymentFreezed.fromJson(localMap[k]);
    }).toList();
    print(data);
    expect(data.first, isA<PaymentDataLocal>());
  });

  test('test model to local type data list', () {
    final map = json.decode(fixture('deposit/payment.json'));
    PaymentRaw model = PaymentRaw.fromJson(map);

    final list = model.getLocalDataList;
    print(list);
    expect(list.first, isA<PaymentDataLocal>());
    expect(list.length, equals(2));

    final list2 = model.getOtherDataList(8, model.virtualJson);
    print(list2);
    expect(list2.first, isA<PaymentDataOther>());
    expect(list2.length, equals(2));
  });

  test('test model to mapped data list', () {
    final map = json.decode(fixture('deposit/payment.json'));
    PaymentRaw model = PaymentRaw.fromJson(map);

    final mapped = model.mapDataList;
    print(mapped);
    expect(mapped[1].first, isA<PaymentDataLocal>());
    expect(mapped[1].length, equals(2));
    expect(mapped[8].first, isA<PaymentDataOther>());
    expect(mapped[8].length, equals(2));
  });
}
