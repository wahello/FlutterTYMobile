// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'payment_freezed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PaymentFreezed _$PaymentFreezedFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'other':
      return PaymentDataOther.fromJson(json);
    case 'local':
      return PaymentDataLocal.fromJson(json);

    default:
      throw FallThroughError();
  }
}

class _$PaymentFreezedTearOff {
  const _$PaymentFreezedTearOff();

  PaymentDataOther other(
      {String amount,
      @JsonKey(name: 'amountoption') List<String> amountOption,
      @JsonKey(name: 'amounttype') int amountType,
      @JsonKey(name: 'bankaccountid') int bankAccountId,
      int gateway,
      int max,
      int min,
      int payment,
      @JsonKey(name: 'pgindex') int pgIndex,
      @required List<int> sb,
      String type}) {
    return PaymentDataOther(
      amount: amount,
      amountOption: amountOption,
      amountType: amountType,
      bankAccountId: bankAccountId,
      gateway: gateway,
      max: max,
      min: min,
      payment: payment,
      pgIndex: pgIndex,
      sb: sb,
      type: type,
    );
  }

  PaymentDataLocal local(
      {@JsonKey(name: 'bankaccountid') int bankAccountId,
      @JsonKey(name: 'bankaccountno') String bankAccountNo,
      @JsonKey(name: 'bankindex') int bankIndex,
      @JsonKey(fromJson: _strFromJson) String max,
      String min,
      String payment,
      String type}) {
    return PaymentDataLocal(
      bankAccountId: bankAccountId,
      bankAccountNo: bankAccountNo,
      bankIndex: bankIndex,
      max: max,
      min: min,
      payment: payment,
      type: type,
    );
  }
}

// ignore: unused_element
const $PaymentFreezed = _$PaymentFreezedTearOff();

mixin _$PaymentFreezed {
  @JsonKey(name: 'bankaccountid')
  int get bankAccountId;
  String get type;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result other(
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
            String type),
    @required
        Result local(
            @JsonKey(name: 'bankaccountid') int bankAccountId,
            @JsonKey(name: 'bankaccountno') String bankAccountNo,
            @JsonKey(name: 'bankindex') int bankIndex,
            @JsonKey(fromJson: _strFromJson) String max,
            String min,
            String payment,
            String type),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result other(
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
        String type),
    Result local(
        @JsonKey(name: 'bankaccountid') int bankAccountId,
        @JsonKey(name: 'bankaccountno') String bankAccountNo,
        @JsonKey(name: 'bankindex') int bankIndex,
        @JsonKey(fromJson: _strFromJson) String max,
        String min,
        String payment,
        String type),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result other(PaymentDataOther value),
    @required Result local(PaymentDataLocal value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result other(PaymentDataOther value),
    Result local(PaymentDataLocal value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
  $PaymentFreezedCopyWith<PaymentFreezed> get copyWith;
}

abstract class $PaymentFreezedCopyWith<$Res> {
  factory $PaymentFreezedCopyWith(
          PaymentFreezed value, $Res Function(PaymentFreezed) then) =
      _$PaymentFreezedCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'bankaccountid') int bankAccountId, String type});
}

class _$PaymentFreezedCopyWithImpl<$Res>
    implements $PaymentFreezedCopyWith<$Res> {
  _$PaymentFreezedCopyWithImpl(this._value, this._then);

  final PaymentFreezed _value;
  // ignore: unused_field
  final $Res Function(PaymentFreezed) _then;

  @override
  $Res call({
    Object bankAccountId = freezed,
    Object type = freezed,
  }) {
    return _then(_value.copyWith(
      bankAccountId: bankAccountId == freezed
          ? _value.bankAccountId
          : bankAccountId as int,
      type: type == freezed ? _value.type : type as String,
    ));
  }
}

abstract class $PaymentDataOtherCopyWith<$Res>
    implements $PaymentFreezedCopyWith<$Res> {
  factory $PaymentDataOtherCopyWith(
          PaymentDataOther value, $Res Function(PaymentDataOther) then) =
      _$PaymentDataOtherCopyWithImpl<$Res>;
  @override
  $Res call(
      {String amount,
      @JsonKey(name: 'amountoption') List<String> amountOption,
      @JsonKey(name: 'amounttype') int amountType,
      @JsonKey(name: 'bankaccountid') int bankAccountId,
      int gateway,
      int max,
      int min,
      int payment,
      @JsonKey(name: 'pgindex') int pgIndex,
      List<int> sb,
      String type});
}

class _$PaymentDataOtherCopyWithImpl<$Res>
    extends _$PaymentFreezedCopyWithImpl<$Res>
    implements $PaymentDataOtherCopyWith<$Res> {
  _$PaymentDataOtherCopyWithImpl(
      PaymentDataOther _value, $Res Function(PaymentDataOther) _then)
      : super(_value, (v) => _then(v as PaymentDataOther));

  @override
  PaymentDataOther get _value => super._value as PaymentDataOther;

  @override
  $Res call({
    Object amount = freezed,
    Object amountOption = freezed,
    Object amountType = freezed,
    Object bankAccountId = freezed,
    Object gateway = freezed,
    Object max = freezed,
    Object min = freezed,
    Object payment = freezed,
    Object pgIndex = freezed,
    Object sb = freezed,
    Object type = freezed,
  }) {
    return _then(PaymentDataOther(
      amount: amount == freezed ? _value.amount : amount as String,
      amountOption: amountOption == freezed
          ? _value.amountOption
          : amountOption as List<String>,
      amountType: amountType == freezed ? _value.amountType : amountType as int,
      bankAccountId: bankAccountId == freezed
          ? _value.bankAccountId
          : bankAccountId as int,
      gateway: gateway == freezed ? _value.gateway : gateway as int,
      max: max == freezed ? _value.max : max as int,
      min: min == freezed ? _value.min : min as int,
      payment: payment == freezed ? _value.payment : payment as int,
      pgIndex: pgIndex == freezed ? _value.pgIndex : pgIndex as int,
      sb: sb == freezed ? _value.sb : sb as List<int>,
      type: type == freezed ? _value.type : type as String,
    ));
  }
}

@JsonSerializable()
class _$PaymentDataOther implements PaymentDataOther {
  const _$PaymentDataOther(
      {this.amount,
      @JsonKey(name: 'amountoption') this.amountOption,
      @JsonKey(name: 'amounttype') this.amountType,
      @JsonKey(name: 'bankaccountid') this.bankAccountId,
      this.gateway,
      this.max,
      this.min,
      this.payment,
      @JsonKey(name: 'pgindex') this.pgIndex,
      @required this.sb,
      this.type})
      : assert(sb != null);

  factory _$PaymentDataOther.fromJson(Map<String, dynamic> json) =>
      _$_$PaymentDataOtherFromJson(json);

  @override
  final String amount;
  @override
  @JsonKey(name: 'amountoption')
  final List<String> amountOption;
  @override
  @JsonKey(name: 'amounttype')
  final int amountType;
  @override
  @JsonKey(name: 'bankaccountid')
  final int bankAccountId;
  @override
  final int gateway;
  @override
  final int max;
  @override
  final int min;
  @override
  final int payment;
  @override
  @JsonKey(name: 'pgindex')
  final int pgIndex;
  @override
  final List<int> sb;
  @override
  final String type;

  @override
  String toString() {
    return 'PaymentFreezed.other(amount: $amount, amountOption: $amountOption, amountType: $amountType, bankAccountId: $bankAccountId, gateway: $gateway, max: $max, min: $min, payment: $payment, pgIndex: $pgIndex, sb: $sb, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaymentDataOther &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.amountOption, amountOption) ||
                const DeepCollectionEquality()
                    .equals(other.amountOption, amountOption)) &&
            (identical(other.amountType, amountType) ||
                const DeepCollectionEquality()
                    .equals(other.amountType, amountType)) &&
            (identical(other.bankAccountId, bankAccountId) ||
                const DeepCollectionEquality()
                    .equals(other.bankAccountId, bankAccountId)) &&
            (identical(other.gateway, gateway) ||
                const DeepCollectionEquality()
                    .equals(other.gateway, gateway)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)) &&
            (identical(other.min, min) ||
                const DeepCollectionEquality().equals(other.min, min)) &&
            (identical(other.payment, payment) ||
                const DeepCollectionEquality()
                    .equals(other.payment, payment)) &&
            (identical(other.pgIndex, pgIndex) ||
                const DeepCollectionEquality()
                    .equals(other.pgIndex, pgIndex)) &&
            (identical(other.sb, sb) ||
                const DeepCollectionEquality().equals(other.sb, sb)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(amountOption) ^
      const DeepCollectionEquality().hash(amountType) ^
      const DeepCollectionEquality().hash(bankAccountId) ^
      const DeepCollectionEquality().hash(gateway) ^
      const DeepCollectionEquality().hash(max) ^
      const DeepCollectionEquality().hash(min) ^
      const DeepCollectionEquality().hash(payment) ^
      const DeepCollectionEquality().hash(pgIndex) ^
      const DeepCollectionEquality().hash(sb) ^
      const DeepCollectionEquality().hash(type);

  @override
  $PaymentDataOtherCopyWith<PaymentDataOther> get copyWith =>
      _$PaymentDataOtherCopyWithImpl<PaymentDataOther>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result other(
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
            String type),
    @required
        Result local(
            @JsonKey(name: 'bankaccountid') int bankAccountId,
            @JsonKey(name: 'bankaccountno') String bankAccountNo,
            @JsonKey(name: 'bankindex') int bankIndex,
            @JsonKey(fromJson: _strFromJson) String max,
            String min,
            String payment,
            String type),
  }) {
    assert(other != null);
    assert(local != null);
    return other(amount, amountOption, amountType, bankAccountId, gateway, max,
        min, payment, pgIndex, sb, type);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result other(
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
        String type),
    Result local(
        @JsonKey(name: 'bankaccountid') int bankAccountId,
        @JsonKey(name: 'bankaccountno') String bankAccountNo,
        @JsonKey(name: 'bankindex') int bankIndex,
        @JsonKey(fromJson: _strFromJson) String max,
        String min,
        String payment,
        String type),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (other != null) {
      return other(amount, amountOption, amountType, bankAccountId, gateway,
          max, min, payment, pgIndex, sb, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result other(PaymentDataOther value),
    @required Result local(PaymentDataLocal value),
  }) {
    assert(other != null);
    assert(local != null);
    return other(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result other(PaymentDataOther value),
    Result local(PaymentDataLocal value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (other != null) {
      return other(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$PaymentDataOtherToJson(this)..['runtimeType'] = 'other';
  }
}

abstract class PaymentDataOther implements PaymentFreezed {
  const factory PaymentDataOther(
      {String amount,
      @JsonKey(name: 'amountoption') List<String> amountOption,
      @JsonKey(name: 'amounttype') int amountType,
      @JsonKey(name: 'bankaccountid') int bankAccountId,
      int gateway,
      int max,
      int min,
      int payment,
      @JsonKey(name: 'pgindex') int pgIndex,
      @required List<int> sb,
      String type}) = _$PaymentDataOther;

  factory PaymentDataOther.fromJson(Map<String, dynamic> json) =
      _$PaymentDataOther.fromJson;

  String get amount;
  @JsonKey(name: 'amountoption')
  List<String> get amountOption;
  @JsonKey(name: 'amounttype')
  int get amountType;
  @override
  @JsonKey(name: 'bankaccountid')
  int get bankAccountId;
  int get gateway;
  int get max;
  int get min;
  int get payment;
  @JsonKey(name: 'pgindex')
  int get pgIndex;
  List<int> get sb;
  @override
  String get type;
  @override
  $PaymentDataOtherCopyWith<PaymentDataOther> get copyWith;
}

abstract class $PaymentDataLocalCopyWith<$Res>
    implements $PaymentFreezedCopyWith<$Res> {
  factory $PaymentDataLocalCopyWith(
          PaymentDataLocal value, $Res Function(PaymentDataLocal) then) =
      _$PaymentDataLocalCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'bankaccountid') int bankAccountId,
      @JsonKey(name: 'bankaccountno') String bankAccountNo,
      @JsonKey(name: 'bankindex') int bankIndex,
      @JsonKey(fromJson: _strFromJson) String max,
      String min,
      String payment,
      String type});
}

class _$PaymentDataLocalCopyWithImpl<$Res>
    extends _$PaymentFreezedCopyWithImpl<$Res>
    implements $PaymentDataLocalCopyWith<$Res> {
  _$PaymentDataLocalCopyWithImpl(
      PaymentDataLocal _value, $Res Function(PaymentDataLocal) _then)
      : super(_value, (v) => _then(v as PaymentDataLocal));

  @override
  PaymentDataLocal get _value => super._value as PaymentDataLocal;

  @override
  $Res call({
    Object bankAccountId = freezed,
    Object bankAccountNo = freezed,
    Object bankIndex = freezed,
    Object max = freezed,
    Object min = freezed,
    Object payment = freezed,
    Object type = freezed,
  }) {
    return _then(PaymentDataLocal(
      bankAccountId: bankAccountId == freezed
          ? _value.bankAccountId
          : bankAccountId as int,
      bankAccountNo: bankAccountNo == freezed
          ? _value.bankAccountNo
          : bankAccountNo as String,
      bankIndex: bankIndex == freezed ? _value.bankIndex : bankIndex as int,
      max: max == freezed ? _value.max : max as String,
      min: min == freezed ? _value.min : min as String,
      payment: payment == freezed ? _value.payment : payment as String,
      type: type == freezed ? _value.type : type as String,
    ));
  }
}

@JsonSerializable()
class _$PaymentDataLocal implements PaymentDataLocal {
  const _$PaymentDataLocal(
      {@JsonKey(name: 'bankaccountid') this.bankAccountId,
      @JsonKey(name: 'bankaccountno') this.bankAccountNo,
      @JsonKey(name: 'bankindex') this.bankIndex,
      @JsonKey(fromJson: _strFromJson) this.max,
      this.min,
      this.payment,
      this.type});

  factory _$PaymentDataLocal.fromJson(Map<String, dynamic> json) =>
      _$_$PaymentDataLocalFromJson(json);

  @override
  @JsonKey(name: 'bankaccountid')
  final int bankAccountId;
  @override
  @JsonKey(name: 'bankaccountno')
  final String bankAccountNo;
  @override
  @JsonKey(name: 'bankindex')
  final int bankIndex;
  @override
  @JsonKey(fromJson: _strFromJson)
  final String max;
  @override
  final String min;
  @override
  final String payment;
  @override
  final String type;

  @override
  String toString() {
    return 'PaymentFreezed.local(bankAccountId: $bankAccountId, bankAccountNo: $bankAccountNo, bankIndex: $bankIndex, max: $max, min: $min, payment: $payment, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaymentDataLocal &&
            (identical(other.bankAccountId, bankAccountId) ||
                const DeepCollectionEquality()
                    .equals(other.bankAccountId, bankAccountId)) &&
            (identical(other.bankAccountNo, bankAccountNo) ||
                const DeepCollectionEquality()
                    .equals(other.bankAccountNo, bankAccountNo)) &&
            (identical(other.bankIndex, bankIndex) ||
                const DeepCollectionEquality()
                    .equals(other.bankIndex, bankIndex)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)) &&
            (identical(other.min, min) ||
                const DeepCollectionEquality().equals(other.min, min)) &&
            (identical(other.payment, payment) ||
                const DeepCollectionEquality()
                    .equals(other.payment, payment)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(bankAccountId) ^
      const DeepCollectionEquality().hash(bankAccountNo) ^
      const DeepCollectionEquality().hash(bankIndex) ^
      const DeepCollectionEquality().hash(max) ^
      const DeepCollectionEquality().hash(min) ^
      const DeepCollectionEquality().hash(payment) ^
      const DeepCollectionEquality().hash(type);

  @override
  $PaymentDataLocalCopyWith<PaymentDataLocal> get copyWith =>
      _$PaymentDataLocalCopyWithImpl<PaymentDataLocal>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result other(
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
            String type),
    @required
        Result local(
            @JsonKey(name: 'bankaccountid') int bankAccountId,
            @JsonKey(name: 'bankaccountno') String bankAccountNo,
            @JsonKey(name: 'bankindex') int bankIndex,
            @JsonKey(fromJson: _strFromJson) String max,
            String min,
            String payment,
            String type),
  }) {
    assert(other != null);
    assert(local != null);
    return local(
        bankAccountId, bankAccountNo, bankIndex, max, min, payment, type);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result other(
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
        String type),
    Result local(
        @JsonKey(name: 'bankaccountid') int bankAccountId,
        @JsonKey(name: 'bankaccountno') String bankAccountNo,
        @JsonKey(name: 'bankindex') int bankIndex,
        @JsonKey(fromJson: _strFromJson) String max,
        String min,
        String payment,
        String type),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (local != null) {
      return local(
          bankAccountId, bankAccountNo, bankIndex, max, min, payment, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result other(PaymentDataOther value),
    @required Result local(PaymentDataLocal value),
  }) {
    assert(other != null);
    assert(local != null);
    return local(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result other(PaymentDataOther value),
    Result local(PaymentDataLocal value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (local != null) {
      return local(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$PaymentDataLocalToJson(this)..['runtimeType'] = 'local';
  }
}

abstract class PaymentDataLocal implements PaymentFreezed {
  const factory PaymentDataLocal(
      {@JsonKey(name: 'bankaccountid') int bankAccountId,
      @JsonKey(name: 'bankaccountno') String bankAccountNo,
      @JsonKey(name: 'bankindex') int bankIndex,
      @JsonKey(fromJson: _strFromJson) String max,
      String min,
      String payment,
      String type}) = _$PaymentDataLocal;

  factory PaymentDataLocal.fromJson(Map<String, dynamic> json) =
      _$PaymentDataLocal.fromJson;

  @override
  @JsonKey(name: 'bankaccountid')
  int get bankAccountId;
  @JsonKey(name: 'bankaccountno')
  String get bankAccountNo;
  @JsonKey(name: 'bankindex')
  int get bankIndex;
  @JsonKey(fromJson: _strFromJson)
  String get max;
  String get min;
  String get payment;
  @override
  String get type;
  @override
  $PaymentDataLocalCopyWith<PaymentDataLocal> get copyWith;
}
