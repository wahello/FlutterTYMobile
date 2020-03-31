import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_freezed.freezed.dart';
part 'payment_freezed.g.dart';

@freezed
abstract class PaymentFreezed with _$PaymentFreezed {
  const factory PaymentFreezed.other({
    String amount,
    @JsonKey(name: 'amountoption') List<String> amountOption,
    @JsonKey(name: 'amounttype') int amountType,
    @JsonKey(name: 'bankaccountid') int bankAccountId,
    int gateway,
    int max,
    int min,
    int payment,
    @JsonKey(name: 'pgindex') int pgIndex,
    @required List<int> sb,
    String type,
  }) = PaymentDataOther;

  const factory PaymentFreezed.local({
    @JsonKey(name: 'bankaccountid') int bankAccountId,
    @JsonKey(name: 'bankaccountno') String bankAccountNo,
    @JsonKey(name: 'bankindex') int bankIndex,
    @JsonKey(fromJson: _strFromJson) String max,
    String min,
    String payment,
    String type,
  }) = PaymentDataLocal;

  @override
  factory PaymentFreezed.fromJson(Map<String, dynamic> json) {
    if (json.keys.contains('bankindex'))
      json['runtimeType'] = 'local';
    else
      json['runtimeType'] = 'other';
    return _$PaymentFreezedFromJson(json);
  }

  static PaymentDataOther jsonToPaymentDataOther(Map<String, dynamic> jsonMap) {
    jsonMap['runtimeType'] = 'other';
    return _$PaymentFreezedFromJson(jsonMap);
  }

  static PaymentDataLocal jsonToPaymentDataLocal(Map<String, dynamic> jsonMap) {
    jsonMap['runtimeType'] = 'local';
    return _$PaymentFreezedFromJson(jsonMap);
  }
}

String _strFromJson(dynamic str) => (str != null) ? str.toString() : '';
