// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'deposit_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DepositDataFormTearOff {
  const _$DepositDataFormTearOff();

  _DepositDataForm call(
      {@required int methodId,
      int promoId = -1,
      int bankId = -1,
      @required int bankIndex,
      String name = '',
      String amount = '-1'}) {
    return _DepositDataForm(
      methodId: methodId,
      promoId: promoId,
      bankId: bankId,
      bankIndex: bankIndex,
      name: name,
      amount: amount,
    );
  }
}

// ignore: unused_element
const $DepositDataForm = _$DepositDataFormTearOff();

mixin _$DepositDataForm {
  int get methodId;
  int get promoId;
  int get bankId;
  int get bankIndex;
  String get name;
  String get amount;

  $DepositDataFormCopyWith<DepositDataForm> get copyWith;
}

abstract class $DepositDataFormCopyWith<$Res> {
  factory $DepositDataFormCopyWith(
          DepositDataForm value, $Res Function(DepositDataForm) then) =
      _$DepositDataFormCopyWithImpl<$Res>;
  $Res call(
      {int methodId,
      int promoId,
      int bankId,
      int bankIndex,
      String name,
      String amount});
}

class _$DepositDataFormCopyWithImpl<$Res>
    implements $DepositDataFormCopyWith<$Res> {
  _$DepositDataFormCopyWithImpl(this._value, this._then);

  final DepositDataForm _value;
  // ignore: unused_field
  final $Res Function(DepositDataForm) _then;

  @override
  $Res call({
    Object methodId = freezed,
    Object promoId = freezed,
    Object bankId = freezed,
    Object bankIndex = freezed,
    Object name = freezed,
    Object amount = freezed,
  }) {
    return _then(_value.copyWith(
      methodId: methodId == freezed ? _value.methodId : methodId as int,
      promoId: promoId == freezed ? _value.promoId : promoId as int,
      bankId: bankId == freezed ? _value.bankId : bankId as int,
      bankIndex: bankIndex == freezed ? _value.bankIndex : bankIndex as int,
      name: name == freezed ? _value.name : name as String,
      amount: amount == freezed ? _value.amount : amount as String,
    ));
  }
}

abstract class _$DepositDataFormCopyWith<$Res>
    implements $DepositDataFormCopyWith<$Res> {
  factory _$DepositDataFormCopyWith(
          _DepositDataForm value, $Res Function(_DepositDataForm) then) =
      __$DepositDataFormCopyWithImpl<$Res>;
  @override
  $Res call(
      {int methodId,
      int promoId,
      int bankId,
      int bankIndex,
      String name,
      String amount});
}

class __$DepositDataFormCopyWithImpl<$Res>
    extends _$DepositDataFormCopyWithImpl<$Res>
    implements _$DepositDataFormCopyWith<$Res> {
  __$DepositDataFormCopyWithImpl(
      _DepositDataForm _value, $Res Function(_DepositDataForm) _then)
      : super(_value, (v) => _then(v as _DepositDataForm));

  @override
  _DepositDataForm get _value => super._value as _DepositDataForm;

  @override
  $Res call({
    Object methodId = freezed,
    Object promoId = freezed,
    Object bankId = freezed,
    Object bankIndex = freezed,
    Object name = freezed,
    Object amount = freezed,
  }) {
    return _then(_DepositDataForm(
      methodId: methodId == freezed ? _value.methodId : methodId as int,
      promoId: promoId == freezed ? _value.promoId : promoId as int,
      bankId: bankId == freezed ? _value.bankId : bankId as int,
      bankIndex: bankIndex == freezed ? _value.bankIndex : bankIndex as int,
      name: name == freezed ? _value.name : name as String,
      amount: amount == freezed ? _value.amount : amount as String,
    ));
  }
}

class _$_DepositDataForm implements _DepositDataForm {
  const _$_DepositDataForm(
      {@required this.methodId,
      this.promoId = -1,
      this.bankId = -1,
      @required this.bankIndex,
      this.name = '',
      this.amount = '-1'})
      : assert(methodId != null),
        assert(promoId != null),
        assert(bankId != null),
        assert(bankIndex != null),
        assert(name != null),
        assert(amount != null);

  @override
  final int methodId;
  @JsonKey(defaultValue: -1)
  @override
  final int promoId;
  @JsonKey(defaultValue: -1)
  @override
  final int bankId;
  @override
  final int bankIndex;
  @JsonKey(defaultValue: '')
  @override
  final String name;
  @JsonKey(defaultValue: '-1')
  @override
  final String amount;

  @override
  String toString() {
    return 'DepositDataForm(methodId: $methodId, promoId: $promoId, bankId: $bankId, bankIndex: $bankIndex, name: $name, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DepositDataForm &&
            (identical(other.methodId, methodId) ||
                const DeepCollectionEquality()
                    .equals(other.methodId, methodId)) &&
            (identical(other.promoId, promoId) ||
                const DeepCollectionEquality()
                    .equals(other.promoId, promoId)) &&
            (identical(other.bankId, bankId) ||
                const DeepCollectionEquality().equals(other.bankId, bankId)) &&
            (identical(other.bankIndex, bankIndex) ||
                const DeepCollectionEquality()
                    .equals(other.bankIndex, bankIndex)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(methodId) ^
      const DeepCollectionEquality().hash(promoId) ^
      const DeepCollectionEquality().hash(bankId) ^
      const DeepCollectionEquality().hash(bankIndex) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(amount);

  @override
  _$DepositDataFormCopyWith<_DepositDataForm> get copyWith =>
      __$DepositDataFormCopyWithImpl<_DepositDataForm>(this, _$identity);
}

abstract class _DepositDataForm implements DepositDataForm {
  const factory _DepositDataForm(
      {@required int methodId,
      int promoId,
      int bankId,
      @required int bankIndex,
      String name,
      String amount}) = _$_DepositDataForm;

  @override
  int get methodId;
  @override
  int get promoId;
  @override
  int get bankId;
  @override
  int get bankIndex;
  @override
  String get name;
  @override
  String get amount;
  @override
  _$DepositDataFormCopyWith<_DepositDataForm> get copyWith;
}
