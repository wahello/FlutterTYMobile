import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ty_mobile/features/subfeatures/deposit/data/model/payment_raw.dart';

import '../../../../fixtures/fixture_reader.dart';

/// IMPORTANT:
/// Need to manually block or change PaymentEnum values that are using
/// localeStr to constant string or test will failed
///
void main() {
  test('test json to model', () {
    final map = json.decode(fixture('deposit/payment.json'));
    print(map.keys);
    final model = PaymentRaw.fromJson(map);
    print(model);
  });
}
