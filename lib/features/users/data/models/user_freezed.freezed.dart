// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user_freezed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

class _$UserModelTearOff {
  const _$UserModelTearOff();

  _UserModel call(
      {@JsonKey(name: 'accountcode', required: true) String account,
      @JsonKey(name: 'creditlimit', required: true) String credit,
      @required String status,
      @required int vip,
      @JsonKey(name: 'vip_name', required: false) String vipName}) {
    return _UserModel(
      account: account,
      credit: credit,
      status: status,
      vip: vip,
      vipName: vipName,
    );
  }
}

// ignore: unused_element
const $UserModel = _$UserModelTearOff();

mixin _$UserModel {
  @JsonKey(name: 'accountcode', required: true)
  String get account;
  @JsonKey(name: 'creditlimit', required: true)
  String get credit;
  String get status;
  int get vip;
  @JsonKey(name: 'vip_name', required: false)
  String get vipName;

  Map<String, dynamic> toJson();
  $UserModelCopyWith<UserModel> get copyWith;
}

abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'accountcode', required: true) String account,
      @JsonKey(name: 'creditlimit', required: true) String credit,
      String status,
      int vip,
      @JsonKey(name: 'vip_name', required: false) String vipName});
}

class _$UserModelCopyWithImpl<$Res> implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  final UserModel _value;
  // ignore: unused_field
  final $Res Function(UserModel) _then;

  @override
  $Res call({
    Object account = freezed,
    Object credit = freezed,
    Object status = freezed,
    Object vip = freezed,
    Object vipName = freezed,
  }) {
    return _then(_value.copyWith(
      account: account == freezed ? _value.account : account as String,
      credit: credit == freezed ? _value.credit : credit as String,
      status: status == freezed ? _value.status : status as String,
      vip: vip == freezed ? _value.vip : vip as int,
      vipName: vipName == freezed ? _value.vipName : vipName as String,
    ));
  }
}

abstract class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(
          _UserModel value, $Res Function(_UserModel) then) =
      __$UserModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'accountcode', required: true) String account,
      @JsonKey(name: 'creditlimit', required: true) String credit,
      String status,
      int vip,
      @JsonKey(name: 'vip_name', required: false) String vipName});
}

class __$UserModelCopyWithImpl<$Res> extends _$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(_UserModel _value, $Res Function(_UserModel) _then)
      : super(_value, (v) => _then(v as _UserModel));

  @override
  _UserModel get _value => super._value as _UserModel;

  @override
  $Res call({
    Object account = freezed,
    Object credit = freezed,
    Object status = freezed,
    Object vip = freezed,
    Object vipName = freezed,
  }) {
    return _then(_UserModel(
      account: account == freezed ? _value.account : account as String,
      credit: credit == freezed ? _value.credit : credit as String,
      status: status == freezed ? _value.status : status as String,
      vip: vip == freezed ? _value.vip : vip as int,
      vipName: vipName == freezed ? _value.vipName : vipName as String,
    ));
  }
}

@JsonSerializable()
class _$_UserModel implements _UserModel {
  const _$_UserModel(
      {@JsonKey(name: 'accountcode', required: true) this.account,
      @JsonKey(name: 'creditlimit', required: true) this.credit,
      @required this.status,
      @required this.vip,
      @JsonKey(name: 'vip_name', required: false) this.vipName})
      : assert(status != null),
        assert(vip != null);

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$_$_UserModelFromJson(json);

  @override
  @JsonKey(name: 'accountcode', required: true)
  final String account;
  @override
  @JsonKey(name: 'creditlimit', required: true)
  final String credit;
  @override
  final String status;
  @override
  final int vip;
  @override
  @JsonKey(name: 'vip_name', required: false)
  final String vipName;

  @override
  String toString() {
    return 'UserModel(account: $account, credit: $credit, status: $status, vip: $vip, vipName: $vipName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserModel &&
            (identical(other.account, account) ||
                const DeepCollectionEquality()
                    .equals(other.account, account)) &&
            (identical(other.credit, credit) ||
                const DeepCollectionEquality().equals(other.credit, credit)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.vip, vip) ||
                const DeepCollectionEquality().equals(other.vip, vip)) &&
            (identical(other.vipName, vipName) ||
                const DeepCollectionEquality().equals(other.vipName, vipName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(account) ^
      const DeepCollectionEquality().hash(credit) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(vip) ^
      const DeepCollectionEquality().hash(vipName);

  @override
  _$UserModelCopyWith<_UserModel> get copyWith =>
      __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserModelToJson(this);
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
          {@JsonKey(name: 'accountcode', required: true) String account,
          @JsonKey(name: 'creditlimit', required: true) String credit,
          @required String status,
          @required int vip,
          @JsonKey(name: 'vip_name', required: false) String vipName}) =
      _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  @JsonKey(name: 'accountcode', required: true)
  String get account;
  @override
  @JsonKey(name: 'creditlimit', required: true)
  String get credit;
  @override
  String get status;
  @override
  int get vip;
  @override
  @JsonKey(name: 'vip_name', required: false)
  String get vipName;
  @override
  _$UserModelCopyWith<_UserModel> get copyWith;
}

class _$UserEntityTearOff {
  const _$UserEntityTearOff();

  _UserEntity call(
      {@required String account, @required String credit, @required int vip}) {
    return _UserEntity(
      account: account,
      credit: credit,
      vip: vip,
    );
  }
}

// ignore: unused_element
const $UserEntity = _$UserEntityTearOff();

mixin _$UserEntity {
  String get account;
  String get credit;
  int get vip;

  $UserEntityCopyWith<UserEntity> get copyWith;
}

abstract class $UserEntityCopyWith<$Res> {
  factory $UserEntityCopyWith(
          UserEntity value, $Res Function(UserEntity) then) =
      _$UserEntityCopyWithImpl<$Res>;
  $Res call({String account, String credit, int vip});
}

class _$UserEntityCopyWithImpl<$Res> implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._value, this._then);

  final UserEntity _value;
  // ignore: unused_field
  final $Res Function(UserEntity) _then;

  @override
  $Res call({
    Object account = freezed,
    Object credit = freezed,
    Object vip = freezed,
  }) {
    return _then(_value.copyWith(
      account: account == freezed ? _value.account : account as String,
      credit: credit == freezed ? _value.credit : credit as String,
      vip: vip == freezed ? _value.vip : vip as int,
    ));
  }
}

abstract class _$UserEntityCopyWith<$Res> implements $UserEntityCopyWith<$Res> {
  factory _$UserEntityCopyWith(
          _UserEntity value, $Res Function(_UserEntity) then) =
      __$UserEntityCopyWithImpl<$Res>;
  @override
  $Res call({String account, String credit, int vip});
}

class __$UserEntityCopyWithImpl<$Res> extends _$UserEntityCopyWithImpl<$Res>
    implements _$UserEntityCopyWith<$Res> {
  __$UserEntityCopyWithImpl(
      _UserEntity _value, $Res Function(_UserEntity) _then)
      : super(_value, (v) => _then(v as _UserEntity));

  @override
  _UserEntity get _value => super._value as _UserEntity;

  @override
  $Res call({
    Object account = freezed,
    Object credit = freezed,
    Object vip = freezed,
  }) {
    return _then(_UserEntity(
      account: account == freezed ? _value.account : account as String,
      credit: credit == freezed ? _value.credit : credit as String,
      vip: vip == freezed ? _value.vip : vip as int,
    ));
  }
}

class _$_UserEntity implements _UserEntity {
  const _$_UserEntity(
      {@required this.account, @required this.credit, @required this.vip})
      : assert(account != null),
        assert(credit != null),
        assert(vip != null);

  @override
  final String account;
  @override
  final String credit;
  @override
  final int vip;

  @override
  String toString() {
    return 'UserEntity(account: $account, credit: $credit, vip: $vip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserEntity &&
            (identical(other.account, account) ||
                const DeepCollectionEquality()
                    .equals(other.account, account)) &&
            (identical(other.credit, credit) ||
                const DeepCollectionEquality().equals(other.credit, credit)) &&
            (identical(other.vip, vip) ||
                const DeepCollectionEquality().equals(other.vip, vip)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(account) ^
      const DeepCollectionEquality().hash(credit) ^
      const DeepCollectionEquality().hash(vip);

  @override
  _$UserEntityCopyWith<_UserEntity> get copyWith =>
      __$UserEntityCopyWithImpl<_UserEntity>(this, _$identity);
}

abstract class _UserEntity implements UserEntity {
  const factory _UserEntity(
      {@required String account,
      @required String credit,
      @required int vip}) = _$_UserEntity;

  @override
  String get account;
  @override
  String get credit;
  @override
  int get vip;
  @override
  _$UserEntityCopyWith<_UserEntity> get copyWith;
}

class _$LoginStatusTearOff {
  const _$LoginStatusTearOff();

  _LoginStatus call({@required bool loggedIn, UserEntity currentUser}) {
    return _LoginStatus(
      loggedIn: loggedIn,
      currentUser: currentUser,
    );
  }
}

// ignore: unused_element
const $LoginStatus = _$LoginStatusTearOff();

mixin _$LoginStatus {
  bool get loggedIn;
  UserEntity get currentUser;

  $LoginStatusCopyWith<LoginStatus> get copyWith;
}

abstract class $LoginStatusCopyWith<$Res> {
  factory $LoginStatusCopyWith(
          LoginStatus value, $Res Function(LoginStatus) then) =
      _$LoginStatusCopyWithImpl<$Res>;
  $Res call({bool loggedIn, UserEntity currentUser});

  $UserEntityCopyWith<$Res> get currentUser;
}

class _$LoginStatusCopyWithImpl<$Res> implements $LoginStatusCopyWith<$Res> {
  _$LoginStatusCopyWithImpl(this._value, this._then);

  final LoginStatus _value;
  // ignore: unused_field
  final $Res Function(LoginStatus) _then;

  @override
  $Res call({
    Object loggedIn = freezed,
    Object currentUser = freezed,
  }) {
    return _then(_value.copyWith(
      loggedIn: loggedIn == freezed ? _value.loggedIn : loggedIn as bool,
      currentUser: currentUser == freezed
          ? _value.currentUser
          : currentUser as UserEntity,
    ));
  }

  @override
  $UserEntityCopyWith<$Res> get currentUser {
    if (_value.currentUser == null) {
      return null;
    }
    return $UserEntityCopyWith<$Res>(_value.currentUser, (value) {
      return _then(_value.copyWith(currentUser: value));
    });
  }
}

abstract class _$LoginStatusCopyWith<$Res>
    implements $LoginStatusCopyWith<$Res> {
  factory _$LoginStatusCopyWith(
          _LoginStatus value, $Res Function(_LoginStatus) then) =
      __$LoginStatusCopyWithImpl<$Res>;
  @override
  $Res call({bool loggedIn, UserEntity currentUser});

  @override
  $UserEntityCopyWith<$Res> get currentUser;
}

class __$LoginStatusCopyWithImpl<$Res> extends _$LoginStatusCopyWithImpl<$Res>
    implements _$LoginStatusCopyWith<$Res> {
  __$LoginStatusCopyWithImpl(
      _LoginStatus _value, $Res Function(_LoginStatus) _then)
      : super(_value, (v) => _then(v as _LoginStatus));

  @override
  _LoginStatus get _value => super._value as _LoginStatus;

  @override
  $Res call({
    Object loggedIn = freezed,
    Object currentUser = freezed,
  }) {
    return _then(_LoginStatus(
      loggedIn: loggedIn == freezed ? _value.loggedIn : loggedIn as bool,
      currentUser: currentUser == freezed
          ? _value.currentUser
          : currentUser as UserEntity,
    ));
  }
}

class _$_LoginStatus implements _LoginStatus {
  const _$_LoginStatus({@required this.loggedIn, this.currentUser})
      : assert(loggedIn != null);

  @override
  final bool loggedIn;
  @override
  final UserEntity currentUser;

  @override
  String toString() {
    return 'LoginStatus(loggedIn: $loggedIn, currentUser: $currentUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginStatus &&
            (identical(other.loggedIn, loggedIn) ||
                const DeepCollectionEquality()
                    .equals(other.loggedIn, loggedIn)) &&
            (identical(other.currentUser, currentUser) ||
                const DeepCollectionEquality()
                    .equals(other.currentUser, currentUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loggedIn) ^
      const DeepCollectionEquality().hash(currentUser);

  @override
  _$LoginStatusCopyWith<_LoginStatus> get copyWith =>
      __$LoginStatusCopyWithImpl<_LoginStatus>(this, _$identity);
}

abstract class _LoginStatus implements LoginStatus {
  const factory _LoginStatus(
      {@required bool loggedIn, UserEntity currentUser}) = _$_LoginStatus;

  @override
  bool get loggedIn;
  @override
  UserEntity get currentUser;
  @override
  _$LoginStatusCopyWith<_LoginStatus> get copyWith;
}
