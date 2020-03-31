// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'login_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserLoginForm _$UserLoginFormFromJson(Map<String, dynamic> json) {
  return _UserLoginForm.fromJson(json);
}

class _$UserLoginFormTearOff {
  const _$UserLoginFormTearOff();

  _UserLoginForm call(
      {@JsonKey(name: 'accountcode') String account, String password}) {
    return _UserLoginForm(
      account: account,
      password: password,
    );
  }
}

// ignore: unused_element
const $UserLoginForm = _$UserLoginFormTearOff();

mixin _$UserLoginForm {
  @JsonKey(name: 'accountcode')
  String get account;
  String get password;

  Map<String, dynamic> toJson();
  $UserLoginFormCopyWith<UserLoginForm> get copyWith;
}

abstract class $UserLoginFormCopyWith<$Res> {
  factory $UserLoginFormCopyWith(
          UserLoginForm value, $Res Function(UserLoginForm) then) =
      _$UserLoginFormCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'accountcode') String account, String password});
}

class _$UserLoginFormCopyWithImpl<$Res>
    implements $UserLoginFormCopyWith<$Res> {
  _$UserLoginFormCopyWithImpl(this._value, this._then);

  final UserLoginForm _value;
  // ignore: unused_field
  final $Res Function(UserLoginForm) _then;

  @override
  $Res call({
    Object account = freezed,
    Object password = freezed,
  }) {
    return _then(_value.copyWith(
      account: account == freezed ? _value.account : account as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

abstract class _$UserLoginFormCopyWith<$Res>
    implements $UserLoginFormCopyWith<$Res> {
  factory _$UserLoginFormCopyWith(
          _UserLoginForm value, $Res Function(_UserLoginForm) then) =
      __$UserLoginFormCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'accountcode') String account, String password});
}

class __$UserLoginFormCopyWithImpl<$Res>
    extends _$UserLoginFormCopyWithImpl<$Res>
    implements _$UserLoginFormCopyWith<$Res> {
  __$UserLoginFormCopyWithImpl(
      _UserLoginForm _value, $Res Function(_UserLoginForm) _then)
      : super(_value, (v) => _then(v as _UserLoginForm));

  @override
  _UserLoginForm get _value => super._value as _UserLoginForm;

  @override
  $Res call({
    Object account = freezed,
    Object password = freezed,
  }) {
    return _then(_UserLoginForm(
      account: account == freezed ? _value.account : account as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

@JsonSerializable()
class _$_UserLoginForm implements _UserLoginForm {
  const _$_UserLoginForm(
      {@JsonKey(name: 'accountcode') this.account, this.password});

  factory _$_UserLoginForm.fromJson(Map<String, dynamic> json) =>
      _$_$_UserLoginFormFromJson(json);

  @override
  @JsonKey(name: 'accountcode')
  final String account;
  @override
  final String password;

  @override
  String toString() {
    return 'UserLoginForm(account: $account, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserLoginForm &&
            (identical(other.account, account) ||
                const DeepCollectionEquality()
                    .equals(other.account, account)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(account) ^
      const DeepCollectionEquality().hash(password);

  @override
  _$UserLoginFormCopyWith<_UserLoginForm> get copyWith =>
      __$UserLoginFormCopyWithImpl<_UserLoginForm>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserLoginFormToJson(this);
  }
}

abstract class _UserLoginForm implements UserLoginForm {
  const factory _UserLoginForm(
      {@JsonKey(name: 'accountcode') String account,
      String password}) = _$_UserLoginForm;

  factory _UserLoginForm.fromJson(Map<String, dynamic> json) =
      _$_UserLoginForm.fromJson;

  @override
  @JsonKey(name: 'accountcode')
  String get account;
  @override
  String get password;
  @override
  _$UserLoginFormCopyWith<_UserLoginForm> get copyWith;
}

class _$UserLoginHiveFormTearOff {
  const _$UserLoginHiveFormTearOff();

  _UserLoginHiveForm call(
      {@HiveField(0) String account,
      @HiveField(1) String password,
      @HiveField(2) bool fastLogin = false}) {
    return _UserLoginHiveForm(
      account: account,
      password: password,
      fastLogin: fastLogin,
    );
  }
}

// ignore: unused_element
const $UserLoginHiveForm = _$UserLoginHiveFormTearOff();

mixin _$UserLoginHiveForm {
  @HiveField(0)
  String get account;
  @HiveField(1)
  String get password;
  @HiveField(2)
  bool get fastLogin;

  $UserLoginHiveFormCopyWith<UserLoginHiveForm> get copyWith;
}

abstract class $UserLoginHiveFormCopyWith<$Res> {
  factory $UserLoginHiveFormCopyWith(
          UserLoginHiveForm value, $Res Function(UserLoginHiveForm) then) =
      _$UserLoginHiveFormCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String account,
      @HiveField(1) String password,
      @HiveField(2) bool fastLogin});
}

class _$UserLoginHiveFormCopyWithImpl<$Res>
    implements $UserLoginHiveFormCopyWith<$Res> {
  _$UserLoginHiveFormCopyWithImpl(this._value, this._then);

  final UserLoginHiveForm _value;
  // ignore: unused_field
  final $Res Function(UserLoginHiveForm) _then;

  @override
  $Res call({
    Object account = freezed,
    Object password = freezed,
    Object fastLogin = freezed,
  }) {
    return _then(_value.copyWith(
      account: account == freezed ? _value.account : account as String,
      password: password == freezed ? _value.password : password as String,
      fastLogin: fastLogin == freezed ? _value.fastLogin : fastLogin as bool,
    ));
  }
}

abstract class _$UserLoginHiveFormCopyWith<$Res>
    implements $UserLoginHiveFormCopyWith<$Res> {
  factory _$UserLoginHiveFormCopyWith(
          _UserLoginHiveForm value, $Res Function(_UserLoginHiveForm) then) =
      __$UserLoginHiveFormCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String account,
      @HiveField(1) String password,
      @HiveField(2) bool fastLogin});
}

class __$UserLoginHiveFormCopyWithImpl<$Res>
    extends _$UserLoginHiveFormCopyWithImpl<$Res>
    implements _$UserLoginHiveFormCopyWith<$Res> {
  __$UserLoginHiveFormCopyWithImpl(
      _UserLoginHiveForm _value, $Res Function(_UserLoginHiveForm) _then)
      : super(_value, (v) => _then(v as _UserLoginHiveForm));

  @override
  _UserLoginHiveForm get _value => super._value as _UserLoginHiveForm;

  @override
  $Res call({
    Object account = freezed,
    Object password = freezed,
    Object fastLogin = freezed,
  }) {
    return _then(_UserLoginHiveForm(
      account: account == freezed ? _value.account : account as String,
      password: password == freezed ? _value.password : password as String,
      fastLogin: fastLogin == freezed ? _value.fastLogin : fastLogin as bool,
    ));
  }
}

@HiveType(typeId: 109)
class _$_UserLoginHiveForm implements _UserLoginHiveForm {
  const _$_UserLoginHiveForm(
      {@HiveField(0) this.account,
      @HiveField(1) this.password,
      @HiveField(2) this.fastLogin = false})
      : assert(fastLogin != null);

  @override
  @HiveField(0)
  final String account;
  @override
  @HiveField(1)
  final String password;
  @JsonKey(defaultValue: false)
  @override
  @HiveField(2)
  final bool fastLogin;

  @override
  String toString() {
    return 'UserLoginHiveForm(account: $account, password: $password, fastLogin: $fastLogin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserLoginHiveForm &&
            (identical(other.account, account) ||
                const DeepCollectionEquality()
                    .equals(other.account, account)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.fastLogin, fastLogin) ||
                const DeepCollectionEquality()
                    .equals(other.fastLogin, fastLogin)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(account) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(fastLogin);

  @override
  _$UserLoginHiveFormCopyWith<_UserLoginHiveForm> get copyWith =>
      __$UserLoginHiveFormCopyWithImpl<_UserLoginHiveForm>(this, _$identity);
}

abstract class _UserLoginHiveForm implements UserLoginHiveForm {
  const factory _UserLoginHiveForm(
      {@HiveField(0) String account,
      @HiveField(1) String password,
      @HiveField(2) bool fastLogin}) = _$_UserLoginHiveForm;

  @override
  @HiveField(0)
  String get account;
  @override
  @HiveField(1)
  String get password;
  @override
  @HiveField(2)
  bool get fastLogin;
  @override
  _$UserLoginHiveFormCopyWith<_UserLoginHiveForm> get copyWith;
}
