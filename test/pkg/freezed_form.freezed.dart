// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'freezed_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FreezedForm _$FreezedFormFromJson(Map<String, dynamic> json) {
  return _FreezedForm.fromJson(json);
}

class _$FreezedFormTearOff {
  const _$FreezedFormTearOff();

  _FreezedForm call(
      @JsonKey(name: 'accountcode') String account, String password) {
    return _FreezedForm(
      account,
      password,
    );
  }
}

// ignore: unused_element
const $FreezedForm = _$FreezedFormTearOff();

mixin _$FreezedForm {
  @JsonKey(name: 'accountcode')
  String get account;
  String get password;

  Map<String, dynamic> toJson();
  $FreezedFormCopyWith<FreezedForm> get copyWith;
}

abstract class $FreezedFormCopyWith<$Res> {
  factory $FreezedFormCopyWith(
          FreezedForm value, $Res Function(FreezedForm) then) =
      _$FreezedFormCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'accountcode') String account, String password});
}

class _$FreezedFormCopyWithImpl<$Res> implements $FreezedFormCopyWith<$Res> {
  _$FreezedFormCopyWithImpl(this._value, this._then);

  final FreezedForm _value;
  // ignore: unused_field
  final $Res Function(FreezedForm) _then;

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

abstract class _$FreezedFormCopyWith<$Res>
    implements $FreezedFormCopyWith<$Res> {
  factory _$FreezedFormCopyWith(
          _FreezedForm value, $Res Function(_FreezedForm) then) =
      __$FreezedFormCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'accountcode') String account, String password});
}

class __$FreezedFormCopyWithImpl<$Res> extends _$FreezedFormCopyWithImpl<$Res>
    implements _$FreezedFormCopyWith<$Res> {
  __$FreezedFormCopyWithImpl(
      _FreezedForm _value, $Res Function(_FreezedForm) _then)
      : super(_value, (v) => _then(v as _FreezedForm));

  @override
  _FreezedForm get _value => super._value as _FreezedForm;

  @override
  $Res call({
    Object account = freezed,
    Object password = freezed,
  }) {
    return _then(_FreezedForm(
      account == freezed ? _value.account : account as String,
      password == freezed ? _value.password : password as String,
    ));
  }
}

@JsonSerializable()
class _$_FreezedForm implements _FreezedForm {
  const _$_FreezedForm(
      @JsonKey(name: 'accountcode') this.account, this.password)
      : assert(account != null),
        assert(password != null);

  factory _$_FreezedForm.fromJson(Map<String, dynamic> json) =>
      _$_$_FreezedFormFromJson(json);

  @override
  @JsonKey(name: 'accountcode')
  final String account;
  @override
  final String password;

  @override
  String toString() {
    return 'FreezedForm(account: $account, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FreezedForm &&
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
  _$FreezedFormCopyWith<_FreezedForm> get copyWith =>
      __$FreezedFormCopyWithImpl<_FreezedForm>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FreezedFormToJson(this);
  }
}

abstract class _FreezedForm implements FreezedForm {
  const factory _FreezedForm(
          @JsonKey(name: 'accountcode') String account, String password) =
      _$_FreezedForm;

  factory _FreezedForm.fromJson(Map<String, dynamic> json) =
      _$_FreezedForm.fromJson;

  @override
  @JsonKey(name: 'accountcode')
  String get account;
  @override
  String get password;
  @override
  _$FreezedFormCopyWith<_FreezedForm> get copyWith;
}

class _$FreezedNestedTearOff {
  const _$FreezedNestedTearOff();

  _Add add(int status) {
    return _Add(
      status,
    );
  }

  _Subtract subtract(int status) {
    return _Subtract(
      status,
    );
  }
}

// ignore: unused_element
const $FreezedNested = _$FreezedNestedTearOff();

mixin _$FreezedNested {
  int get status;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result add(int status),
    @required Result subtract(int status),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result add(int status),
    Result subtract(int status),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result add(_Add value),
    @required Result subtract(_Subtract value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result add(_Add value),
    Result subtract(_Subtract value),
    @required Result orElse(),
  });

  $FreezedNestedCopyWith<FreezedNested> get copyWith;
}

abstract class $FreezedNestedCopyWith<$Res> {
  factory $FreezedNestedCopyWith(
          FreezedNested value, $Res Function(FreezedNested) then) =
      _$FreezedNestedCopyWithImpl<$Res>;
  $Res call({int status});
}

class _$FreezedNestedCopyWithImpl<$Res>
    implements $FreezedNestedCopyWith<$Res> {
  _$FreezedNestedCopyWithImpl(this._value, this._then);

  final FreezedNested _value;
  // ignore: unused_field
  final $Res Function(FreezedNested) _then;

  @override
  $Res call({
    Object status = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed ? _value.status : status as int,
    ));
  }
}

abstract class _$AddCopyWith<$Res> implements $FreezedNestedCopyWith<$Res> {
  factory _$AddCopyWith(_Add value, $Res Function(_Add) then) =
      __$AddCopyWithImpl<$Res>;
  @override
  $Res call({int status});
}

class __$AddCopyWithImpl<$Res> extends _$FreezedNestedCopyWithImpl<$Res>
    implements _$AddCopyWith<$Res> {
  __$AddCopyWithImpl(_Add _value, $Res Function(_Add) _then)
      : super(_value, (v) => _then(v as _Add));

  @override
  _Add get _value => super._value as _Add;

  @override
  $Res call({
    Object status = freezed,
  }) {
    return _then(_Add(
      status == freezed ? _value.status : status as int,
    ));
  }
}

class _$_Add implements _Add {
  const _$_Add(this.status) : assert(status != null);

  @override
  final int status;

  @override
  String toString() {
    return 'FreezedNested.add(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Add &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(status);

  @override
  _$AddCopyWith<_Add> get copyWith =>
      __$AddCopyWithImpl<_Add>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result add(int status),
    @required Result subtract(int status),
  }) {
    assert(add != null);
    assert(subtract != null);
    return add(status);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result add(int status),
    Result subtract(int status),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (add != null) {
      return add(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result add(_Add value),
    @required Result subtract(_Subtract value),
  }) {
    assert(add != null);
    assert(subtract != null);
    return add(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result add(_Add value),
    Result subtract(_Subtract value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements FreezedNested {
  const factory _Add(int status) = _$_Add;

  @override
  int get status;
  @override
  _$AddCopyWith<_Add> get copyWith;
}

abstract class _$SubtractCopyWith<$Res>
    implements $FreezedNestedCopyWith<$Res> {
  factory _$SubtractCopyWith(_Subtract value, $Res Function(_Subtract) then) =
      __$SubtractCopyWithImpl<$Res>;
  @override
  $Res call({int status});
}

class __$SubtractCopyWithImpl<$Res> extends _$FreezedNestedCopyWithImpl<$Res>
    implements _$SubtractCopyWith<$Res> {
  __$SubtractCopyWithImpl(_Subtract _value, $Res Function(_Subtract) _then)
      : super(_value, (v) => _then(v as _Subtract));

  @override
  _Subtract get _value => super._value as _Subtract;

  @override
  $Res call({
    Object status = freezed,
  }) {
    return _then(_Subtract(
      status == freezed ? _value.status : status as int,
    ));
  }
}

class _$_Subtract implements _Subtract {
  const _$_Subtract(this.status) : assert(status != null);

  @override
  final int status;

  @override
  String toString() {
    return 'FreezedNested.subtract(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Subtract &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(status);

  @override
  _$SubtractCopyWith<_Subtract> get copyWith =>
      __$SubtractCopyWithImpl<_Subtract>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result add(int status),
    @required Result subtract(int status),
  }) {
    assert(add != null);
    assert(subtract != null);
    return subtract(status);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result add(int status),
    Result subtract(int status),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (subtract != null) {
      return subtract(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result add(_Add value),
    @required Result subtract(_Subtract value),
  }) {
    assert(add != null);
    assert(subtract != null);
    return subtract(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result add(_Add value),
    Result subtract(_Subtract value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (subtract != null) {
      return subtract(this);
    }
    return orElse();
  }
}

abstract class _Subtract implements FreezedNested {
  const factory _Subtract(int status) = _$_Subtract;

  @override
  int get status;
  @override
  _$SubtractCopyWith<_Subtract> get copyWith;
}

class _$FreezedOperationTearOff {
  const _$FreezedOperationTearOff();

  Add add(int value) {
    return Add(
      value,
    );
  }

  Subtract subtract(int value) {
    return Subtract(
      value,
    );
  }

  Error error([String msg]) {
    return Error(
      msg,
    );
  }
}

// ignore: unused_element
const $FreezedOperation = _$FreezedOperationTearOff();

mixin _$FreezedOperation {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result add(int value),
    @required Result subtract(int value),
    @required Result error(String msg),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result add(int value),
    Result subtract(int value),
    Result error(String msg),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result add(Add value),
    @required Result subtract(Subtract value),
    @required Result error(Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result add(Add value),
    Result subtract(Subtract value),
    Result error(Error value),
    @required Result orElse(),
  });
}

abstract class $FreezedOperationCopyWith<$Res> {
  factory $FreezedOperationCopyWith(
          FreezedOperation value, $Res Function(FreezedOperation) then) =
      _$FreezedOperationCopyWithImpl<$Res>;
}

class _$FreezedOperationCopyWithImpl<$Res>
    implements $FreezedOperationCopyWith<$Res> {
  _$FreezedOperationCopyWithImpl(this._value, this._then);

  final FreezedOperation _value;
  // ignore: unused_field
  final $Res Function(FreezedOperation) _then;
}

abstract class $AddCopyWith<$Res> {
  factory $AddCopyWith(Add value, $Res Function(Add) then) =
      _$AddCopyWithImpl<$Res>;
  $Res call({int value});
}

class _$AddCopyWithImpl<$Res> extends _$FreezedOperationCopyWithImpl<$Res>
    implements $AddCopyWith<$Res> {
  _$AddCopyWithImpl(Add _value, $Res Function(Add) _then)
      : super(_value, (v) => _then(v as Add));

  @override
  Add get _value => super._value as Add;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(Add(
      value == freezed ? _value.value : value as int,
    ));
  }
}

class _$Add implements Add {
  const _$Add(this.value) : assert(value != null);

  @override
  final int value;

  @override
  String toString() {
    return 'FreezedOperation.add(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Add &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @override
  $AddCopyWith<Add> get copyWith => _$AddCopyWithImpl<Add>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result add(int value),
    @required Result subtract(int value),
    @required Result error(String msg),
  }) {
    assert(add != null);
    assert(subtract != null);
    assert(error != null);
    return add(value);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result add(int value),
    Result subtract(int value),
    Result error(String msg),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (add != null) {
      return add(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result add(Add value),
    @required Result subtract(Subtract value),
    @required Result error(Error value),
  }) {
    assert(add != null);
    assert(subtract != null);
    assert(error != null);
    return add(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result add(Add value),
    Result subtract(Subtract value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class Add implements FreezedOperation {
  const factory Add(int value) = _$Add;

  int get value;
  $AddCopyWith<Add> get copyWith;
}

abstract class $SubtractCopyWith<$Res> {
  factory $SubtractCopyWith(Subtract value, $Res Function(Subtract) then) =
      _$SubtractCopyWithImpl<$Res>;
  $Res call({int value});
}

class _$SubtractCopyWithImpl<$Res> extends _$FreezedOperationCopyWithImpl<$Res>
    implements $SubtractCopyWith<$Res> {
  _$SubtractCopyWithImpl(Subtract _value, $Res Function(Subtract) _then)
      : super(_value, (v) => _then(v as Subtract));

  @override
  Subtract get _value => super._value as Subtract;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(Subtract(
      value == freezed ? _value.value : value as int,
    ));
  }
}

class _$Subtract implements Subtract {
  const _$Subtract(this.value) : assert(value != null);

  @override
  final int value;

  @override
  String toString() {
    return 'FreezedOperation.subtract(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Subtract &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @override
  $SubtractCopyWith<Subtract> get copyWith =>
      _$SubtractCopyWithImpl<Subtract>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result add(int value),
    @required Result subtract(int value),
    @required Result error(String msg),
  }) {
    assert(add != null);
    assert(subtract != null);
    assert(error != null);
    return subtract(value);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result add(int value),
    Result subtract(int value),
    Result error(String msg),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (subtract != null) {
      return subtract(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result add(Add value),
    @required Result subtract(Subtract value),
    @required Result error(Error value),
  }) {
    assert(add != null);
    assert(subtract != null);
    assert(error != null);
    return subtract(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result add(Add value),
    Result subtract(Subtract value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (subtract != null) {
      return subtract(this);
    }
    return orElse();
  }
}

abstract class Subtract implements FreezedOperation {
  const factory Subtract(int value) = _$Subtract;

  int get value;
  $SubtractCopyWith<Subtract> get copyWith;
}

abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({String msg});
}

class _$ErrorCopyWithImpl<$Res> extends _$FreezedOperationCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object msg = freezed,
  }) {
    return _then(Error(
      msg == freezed ? _value.msg : msg as String,
    ));
  }
}

class _$Error implements Error {
  const _$Error([this.msg]);

  @override
  final String msg;

  @override
  String toString() {
    return 'FreezedOperation.error(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result add(int value),
    @required Result subtract(int value),
    @required Result error(String msg),
  }) {
    assert(add != null);
    assert(subtract != null);
    assert(error != null);
    return error(msg);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result add(int value),
    Result subtract(int value),
    Result error(String msg),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result add(Add value),
    @required Result subtract(Subtract value),
    @required Result error(Error value),
  }) {
    assert(add != null);
    assert(subtract != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result add(Add value),
    Result subtract(Subtract value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements FreezedOperation {
  const factory Error([String msg]) = _$Error;

  String get msg;
  $ErrorCopyWith<Error> get copyWith;
}
