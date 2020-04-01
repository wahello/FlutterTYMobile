// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'account_limit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AccountLimitModel _$AccountLimitModelFromJson(Map<String, dynamic> json) {
  return _AccountLimitModel.fromJson(json);
}

class _$AccountLimitModelTearOff {
  const _$AccountLimitModelTearOff();

  _AccountLimitModel call(
      {@JsonKey(name: 'accountcode', required: true) String account,
      @JsonKey(name: 'unlimit', required: true) String credit}) {
    return _AccountLimitModel(
      account: account,
      credit: credit,
    );
  }
}

// ignore: unused_element
const $AccountLimitModel = _$AccountLimitModelTearOff();

mixin _$AccountLimitModel {
  @JsonKey(name: 'accountcode', required: true)
  String get account;
  @JsonKey(name: 'unlimit', required: true)
  String get credit;

  Map<String, dynamic> toJson();
  $AccountLimitModelCopyWith<AccountLimitModel> get copyWith;
}

abstract class $AccountLimitModelCopyWith<$Res> {
  factory $AccountLimitModelCopyWith(
          AccountLimitModel value, $Res Function(AccountLimitModel) then) =
      _$AccountLimitModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'accountcode', required: true) String account,
      @JsonKey(name: 'unlimit', required: true) String credit});
}

class _$AccountLimitModelCopyWithImpl<$Res>
    implements $AccountLimitModelCopyWith<$Res> {
  _$AccountLimitModelCopyWithImpl(this._value, this._then);

  final AccountLimitModel _value;
  // ignore: unused_field
  final $Res Function(AccountLimitModel) _then;

  @override
  $Res call({
    Object account = freezed,
    Object credit = freezed,
  }) {
    return _then(_value.copyWith(
      account: account == freezed ? _value.account : account as String,
      credit: credit == freezed ? _value.credit : credit as String,
    ));
  }
}

abstract class _$AccountLimitModelCopyWith<$Res>
    implements $AccountLimitModelCopyWith<$Res> {
  factory _$AccountLimitModelCopyWith(
          _AccountLimitModel value, $Res Function(_AccountLimitModel) then) =
      __$AccountLimitModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'accountcode', required: true) String account,
      @JsonKey(name: 'unlimit', required: true) String credit});
}

class __$AccountLimitModelCopyWithImpl<$Res>
    extends _$AccountLimitModelCopyWithImpl<$Res>
    implements _$AccountLimitModelCopyWith<$Res> {
  __$AccountLimitModelCopyWithImpl(
      _AccountLimitModel _value, $Res Function(_AccountLimitModel) _then)
      : super(_value, (v) => _then(v as _AccountLimitModel));

  @override
  _AccountLimitModel get _value => super._value as _AccountLimitModel;

  @override
  $Res call({
    Object account = freezed,
    Object credit = freezed,
  }) {
    return _then(_AccountLimitModel(
      account: account == freezed ? _value.account : account as String,
      credit: credit == freezed ? _value.credit : credit as String,
    ));
  }
}

@JsonSerializable()
class _$_AccountLimitModel implements _AccountLimitModel {
  const _$_AccountLimitModel(
      {@JsonKey(name: 'accountcode', required: true) this.account,
      @JsonKey(name: 'unlimit', required: true) this.credit});

  factory _$_AccountLimitModel.fromJson(Map<String, dynamic> json) =>
      _$_$_AccountLimitModelFromJson(json);

  @override
  @JsonKey(name: 'accountcode', required: true)
  final String account;
  @override
  @JsonKey(name: 'unlimit', required: true)
  final String credit;

  @override
  String toString() {
    return 'AccountLimitModel(account: $account, credit: $credit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountLimitModel &&
            (identical(other.account, account) ||
                const DeepCollectionEquality()
                    .equals(other.account, account)) &&
            (identical(other.credit, credit) ||
                const DeepCollectionEquality().equals(other.credit, credit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(account) ^
      const DeepCollectionEquality().hash(credit);

  @override
  _$AccountLimitModelCopyWith<_AccountLimitModel> get copyWith =>
      __$AccountLimitModelCopyWithImpl<_AccountLimitModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AccountLimitModelToJson(this);
  }
}

abstract class _AccountLimitModel implements AccountLimitModel {
  const factory _AccountLimitModel(
          {@JsonKey(name: 'accountcode', required: true) String account,
          @JsonKey(name: 'unlimit', required: true) String credit}) =
      _$_AccountLimitModel;

  factory _AccountLimitModel.fromJson(Map<String, dynamic> json) =
      _$_AccountLimitModel.fromJson;

  @override
  @JsonKey(name: 'accountcode', required: true)
  String get account;
  @override
  @JsonKey(name: 'unlimit', required: true)
  String get credit;
  @override
  _$AccountLimitModelCopyWith<_AccountLimitModel> get copyWith;
}
