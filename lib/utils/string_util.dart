import 'package:email_validator/email_validator.dart';
import 'package:flutter_ty_mobile/mylogger.dart';

extension IntValueExtension on int {
  String valueToString({bool creditSign = false}) =>
      this.toString().trimValue(creditSign: creditSign);
}

extension DoubleValueExtension on double {
  String valueToString({bool floorValue = false, bool creditSign = false}) =>
      this.toString().trimValue(floorValue: floorValue, creditSign: creditSign);
}

final _htmlRegex = RegExp(
  '<\s*html.*?>.*?<\s*/\s*html.*?>',
);

extension StringVerifyExtension on String {
  bool get isUrl => Uri.parse(this).isAbsolute;

  bool get isEmail => EmailValidator.validate(this);

  bool get isHtmlFormat => _htmlRegex.hasMatch(this);
}

extension ValueStringExtension on String {
  int get valueToInt {
    try {
      if (this == null) return -1;
      if (contains('.'))
        return double.parse(this.replaceAll('￥', '').trim()).floor();
      else
        return int.parse(this.replaceAll('￥', '').trim());
    } catch (e) {
      MyLogger.warn(msg: 'parse value has exception', tag: 'strToInt');
      return -1;
    }
  }

  double get valueToDouble {
    try {
      if (this == null) return double.parse('-1');
      return double.parse(this.replaceAll('￥', '').trim());
    } catch (e) {
      MyLogger.warn(msg: 'parse value has exception', tag: 'strToDouble');
      return double.parse('-1');
    }
  }

  bool valueIsEqual(String secondString) {
    return this.valueToDouble - secondString.valueToDouble == 0.0;
  }

  /// [floorValue] floor value to int
  /// [floorIfInt] floor value to int if value is not double
  /// [creditSign] add a credit sign as string prefix
  String trimValue(
      {bool floorValue = false,
      bool floorIfInt = false,
      bool creditSign = false}) {
//    print('floor: $floorValue, floorInt: $floorIfInt, creditSign: $creditSign');
//    print('value: $this');
    try {
      var value = '';
      if (floorValue) {
        value = this.valueToInt.toString(); // 50
      } else if (floorIfInt) {
        if (contains('.')) {
          var endValue = this.split('.')[1];
          if (endValue.valueToInt == 0)
            value = this.valueToInt.toString(); // 50
          else
            value = this.valueToDouble.toStringAsFixed(2); // 50.50
        } else {
          value = this.valueToInt.toString(); // 50
        }
      } else {
        value = this.valueToDouble.toStringAsFixed(2); // 50.00
      }

      if (creditSign)
        return '\uffe5$value';
      else
        return value;
    } catch (e) {
      MyLogger.warn(msg: 'trim value has exception', tag: 'trimValue');
      print('trim value exception: $e');
      return this;
    }
  }
}
