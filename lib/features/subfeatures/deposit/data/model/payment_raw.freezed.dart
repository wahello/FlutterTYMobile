// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'payment_raw.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PaymentRaw _$PaymentRawFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'default':
      return _PaymentRaw.fromJson(json);
    case 'named':
      return _PaymentRawNamed.fromJson(json);

    default:
      throw FallThroughError();
  }
}

class _$PaymentRawTearOff {
  const _$PaymentRawTearOff();

  _PaymentRaw call(
      {@JsonKey(name: '1', defaultValue: '') dynamic bankJson,
      @JsonKey(name: '2', defaultValue: '') dynamic onlineJson,
      @JsonKey(name: '3', defaultValue: '') dynamic wechatJson,
      @JsonKey(name: '4', defaultValue: '') dynamic quickJson,
      @JsonKey(name: '5', defaultValue: '') dynamic aliJson,
      @JsonKey(name: '7', defaultValue: '') dynamic unionJson,
      @JsonKey(name: '8', defaultValue: '') dynamic virtualJson}) {
    return _PaymentRaw(
      bankJson: bankJson,
      onlineJson: onlineJson,
      wechatJson: wechatJson,
      quickJson: quickJson,
      aliJson: aliJson,
      unionJson: unionJson,
      virtualJson: virtualJson,
    );
  }

  _PaymentRawNamed named(
      {@JsonKey(name: 'localbank', defaultValue: '') dynamic bankJson,
      @JsonKey(name: 'onlinepay', defaultValue: '') dynamic onlineJson,
      @JsonKey(name: 'wechatpay', defaultValue: '') dynamic wechatJson,
      @JsonKey(name: 'quickpay', defaultValue: '') dynamic quickJson,
      @JsonKey(name: 'alipay', defaultValue: '') dynamic aliJson,
      @JsonKey(name: 'unionpay', defaultValue: '') dynamic unionJson,
      @JsonKey(name: 'vc', defaultValue: '') dynamic virtualJson}) {
    return _PaymentRawNamed(
      bankJson: bankJson,
      onlineJson: onlineJson,
      wechatJson: wechatJson,
      quickJson: quickJson,
      aliJson: aliJson,
      unionJson: unionJson,
      virtualJson: virtualJson,
    );
  }
}

// ignore: unused_element
const $PaymentRaw = _$PaymentRawTearOff();

mixin _$PaymentRaw {
  @JsonKey(name: '1', defaultValue: '')
  dynamic get bankJson;
  @JsonKey(name: '2', defaultValue: '')
  dynamic get onlineJson;
  @JsonKey(name: '3', defaultValue: '')
  dynamic get wechatJson;
  @JsonKey(name: '4', defaultValue: '')
  dynamic get quickJson;
  @JsonKey(name: '5', defaultValue: '')
  dynamic get aliJson;
  @JsonKey(name: '7', defaultValue: '')
  dynamic get unionJson;
  @JsonKey(name: '8', defaultValue: '')
  dynamic get virtualJson;

  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        @JsonKey(name: '1', defaultValue: '') dynamic bankJson,
        @JsonKey(name: '2', defaultValue: '') dynamic onlineJson,
        @JsonKey(name: '3', defaultValue: '') dynamic wechatJson,
        @JsonKey(name: '4', defaultValue: '') dynamic quickJson,
        @JsonKey(name: '5', defaultValue: '') dynamic aliJson,
        @JsonKey(name: '7', defaultValue: '') dynamic unionJson,
        @JsonKey(name: '8', defaultValue: '') dynamic virtualJson), {
    @required
        Result named(
            @JsonKey(name: 'localbank', defaultValue: '') dynamic bankJson,
            @JsonKey(name: 'onlinepay', defaultValue: '') dynamic onlineJson,
            @JsonKey(name: 'wechatpay', defaultValue: '') dynamic wechatJson,
            @JsonKey(name: 'quickpay', defaultValue: '') dynamic quickJson,
            @JsonKey(name: 'alipay', defaultValue: '') dynamic aliJson,
            @JsonKey(name: 'unionpay', defaultValue: '') dynamic unionJson,
            @JsonKey(name: 'vc', defaultValue: '') dynamic virtualJson),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        @JsonKey(name: '1', defaultValue: '') dynamic bankJson,
        @JsonKey(name: '2', defaultValue: '') dynamic onlineJson,
        @JsonKey(name: '3', defaultValue: '') dynamic wechatJson,
        @JsonKey(name: '4', defaultValue: '') dynamic quickJson,
        @JsonKey(name: '5', defaultValue: '') dynamic aliJson,
        @JsonKey(name: '7', defaultValue: '') dynamic unionJson,
        @JsonKey(name: '8', defaultValue: '') dynamic virtualJson), {
    Result named(
        @JsonKey(name: 'localbank', defaultValue: '') dynamic bankJson,
        @JsonKey(name: 'onlinepay', defaultValue: '') dynamic onlineJson,
        @JsonKey(name: 'wechatpay', defaultValue: '') dynamic wechatJson,
        @JsonKey(name: 'quickpay', defaultValue: '') dynamic quickJson,
        @JsonKey(name: 'alipay', defaultValue: '') dynamic aliJson,
        @JsonKey(name: 'unionpay', defaultValue: '') dynamic unionJson,
        @JsonKey(name: 'vc', defaultValue: '') dynamic virtualJson),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_PaymentRaw value), {
    @required Result named(_PaymentRawNamed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_PaymentRaw value), {
    Result named(_PaymentRawNamed value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
  $PaymentRawCopyWith<PaymentRaw> get copyWith;
}

abstract class $PaymentRawCopyWith<$Res> {
  factory $PaymentRawCopyWith(
          PaymentRaw value, $Res Function(PaymentRaw) then) =
      _$PaymentRawCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '1', defaultValue: '') dynamic bankJson,
      @JsonKey(name: '2', defaultValue: '') dynamic onlineJson,
      @JsonKey(name: '3', defaultValue: '') dynamic wechatJson,
      @JsonKey(name: '4', defaultValue: '') dynamic quickJson,
      @JsonKey(name: '5', defaultValue: '') dynamic aliJson,
      @JsonKey(name: '7', defaultValue: '') dynamic unionJson,
      @JsonKey(name: '8', defaultValue: '') dynamic virtualJson});
}

class _$PaymentRawCopyWithImpl<$Res> implements $PaymentRawCopyWith<$Res> {
  _$PaymentRawCopyWithImpl(this._value, this._then);

  final PaymentRaw _value;
  // ignore: unused_field
  final $Res Function(PaymentRaw) _then;

  @override
  $Res call({
    Object bankJson = freezed,
    Object onlineJson = freezed,
    Object wechatJson = freezed,
    Object quickJson = freezed,
    Object aliJson = freezed,
    Object unionJson = freezed,
    Object virtualJson = freezed,
  }) {
    return _then(_value.copyWith(
      bankJson: bankJson == freezed ? _value.bankJson : bankJson as dynamic,
      onlineJson:
          onlineJson == freezed ? _value.onlineJson : onlineJson as dynamic,
      wechatJson:
          wechatJson == freezed ? _value.wechatJson : wechatJson as dynamic,
      quickJson: quickJson == freezed ? _value.quickJson : quickJson as dynamic,
      aliJson: aliJson == freezed ? _value.aliJson : aliJson as dynamic,
      unionJson: unionJson == freezed ? _value.unionJson : unionJson as dynamic,
      virtualJson:
          virtualJson == freezed ? _value.virtualJson : virtualJson as dynamic,
    ));
  }
}

abstract class _$PaymentRawCopyWith<$Res> implements $PaymentRawCopyWith<$Res> {
  factory _$PaymentRawCopyWith(
          _PaymentRaw value, $Res Function(_PaymentRaw) then) =
      __$PaymentRawCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '1', defaultValue: '') dynamic bankJson,
      @JsonKey(name: '2', defaultValue: '') dynamic onlineJson,
      @JsonKey(name: '3', defaultValue: '') dynamic wechatJson,
      @JsonKey(name: '4', defaultValue: '') dynamic quickJson,
      @JsonKey(name: '5', defaultValue: '') dynamic aliJson,
      @JsonKey(name: '7', defaultValue: '') dynamic unionJson,
      @JsonKey(name: '8', defaultValue: '') dynamic virtualJson});
}

class __$PaymentRawCopyWithImpl<$Res> extends _$PaymentRawCopyWithImpl<$Res>
    implements _$PaymentRawCopyWith<$Res> {
  __$PaymentRawCopyWithImpl(
      _PaymentRaw _value, $Res Function(_PaymentRaw) _then)
      : super(_value, (v) => _then(v as _PaymentRaw));

  @override
  _PaymentRaw get _value => super._value as _PaymentRaw;

  @override
  $Res call({
    Object bankJson = freezed,
    Object onlineJson = freezed,
    Object wechatJson = freezed,
    Object quickJson = freezed,
    Object aliJson = freezed,
    Object unionJson = freezed,
    Object virtualJson = freezed,
  }) {
    return _then(_PaymentRaw(
      bankJson: bankJson == freezed ? _value.bankJson : bankJson as dynamic,
      onlineJson:
          onlineJson == freezed ? _value.onlineJson : onlineJson as dynamic,
      wechatJson:
          wechatJson == freezed ? _value.wechatJson : wechatJson as dynamic,
      quickJson: quickJson == freezed ? _value.quickJson : quickJson as dynamic,
      aliJson: aliJson == freezed ? _value.aliJson : aliJson as dynamic,
      unionJson: unionJson == freezed ? _value.unionJson : unionJson as dynamic,
      virtualJson:
          virtualJson == freezed ? _value.virtualJson : virtualJson as dynamic,
    ));
  }
}

@JsonSerializable()
class _$_PaymentRaw implements _PaymentRaw {
  const _$_PaymentRaw(
      {@JsonKey(name: '1', defaultValue: '') this.bankJson,
      @JsonKey(name: '2', defaultValue: '') this.onlineJson,
      @JsonKey(name: '3', defaultValue: '') this.wechatJson,
      @JsonKey(name: '4', defaultValue: '') this.quickJson,
      @JsonKey(name: '5', defaultValue: '') this.aliJson,
      @JsonKey(name: '7', defaultValue: '') this.unionJson,
      @JsonKey(name: '8', defaultValue: '') this.virtualJson});

  factory _$_PaymentRaw.fromJson(Map<String, dynamic> json) =>
      _$_$_PaymentRawFromJson(json);

  @override
  @JsonKey(name: '1', defaultValue: '')
  final dynamic bankJson;
  @override
  @JsonKey(name: '2', defaultValue: '')
  final dynamic onlineJson;
  @override
  @JsonKey(name: '3', defaultValue: '')
  final dynamic wechatJson;
  @override
  @JsonKey(name: '4', defaultValue: '')
  final dynamic quickJson;
  @override
  @JsonKey(name: '5', defaultValue: '')
  final dynamic aliJson;
  @override
  @JsonKey(name: '7', defaultValue: '')
  final dynamic unionJson;
  @override
  @JsonKey(name: '8', defaultValue: '')
  final dynamic virtualJson;

  @override
  String toString() {
    return 'PaymentRaw(bankJson: $bankJson, onlineJson: $onlineJson, wechatJson: $wechatJson, quickJson: $quickJson, aliJson: $aliJson, unionJson: $unionJson, virtualJson: $virtualJson)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentRaw &&
            (identical(other.bankJson, bankJson) ||
                const DeepCollectionEquality()
                    .equals(other.bankJson, bankJson)) &&
            (identical(other.onlineJson, onlineJson) ||
                const DeepCollectionEquality()
                    .equals(other.onlineJson, onlineJson)) &&
            (identical(other.wechatJson, wechatJson) ||
                const DeepCollectionEquality()
                    .equals(other.wechatJson, wechatJson)) &&
            (identical(other.quickJson, quickJson) ||
                const DeepCollectionEquality()
                    .equals(other.quickJson, quickJson)) &&
            (identical(other.aliJson, aliJson) ||
                const DeepCollectionEquality()
                    .equals(other.aliJson, aliJson)) &&
            (identical(other.unionJson, unionJson) ||
                const DeepCollectionEquality()
                    .equals(other.unionJson, unionJson)) &&
            (identical(other.virtualJson, virtualJson) ||
                const DeepCollectionEquality()
                    .equals(other.virtualJson, virtualJson)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(bankJson) ^
      const DeepCollectionEquality().hash(onlineJson) ^
      const DeepCollectionEquality().hash(wechatJson) ^
      const DeepCollectionEquality().hash(quickJson) ^
      const DeepCollectionEquality().hash(aliJson) ^
      const DeepCollectionEquality().hash(unionJson) ^
      const DeepCollectionEquality().hash(virtualJson);

  @override
  _$PaymentRawCopyWith<_PaymentRaw> get copyWith =>
      __$PaymentRawCopyWithImpl<_PaymentRaw>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        @JsonKey(name: '1', defaultValue: '') dynamic bankJson,
        @JsonKey(name: '2', defaultValue: '') dynamic onlineJson,
        @JsonKey(name: '3', defaultValue: '') dynamic wechatJson,
        @JsonKey(name: '4', defaultValue: '') dynamic quickJson,
        @JsonKey(name: '5', defaultValue: '') dynamic aliJson,
        @JsonKey(name: '7', defaultValue: '') dynamic unionJson,
        @JsonKey(name: '8', defaultValue: '') dynamic virtualJson), {
    @required
        Result named(
            @JsonKey(name: 'localbank', defaultValue: '') dynamic bankJson,
            @JsonKey(name: 'onlinepay', defaultValue: '') dynamic onlineJson,
            @JsonKey(name: 'wechatpay', defaultValue: '') dynamic wechatJson,
            @JsonKey(name: 'quickpay', defaultValue: '') dynamic quickJson,
            @JsonKey(name: 'alipay', defaultValue: '') dynamic aliJson,
            @JsonKey(name: 'unionpay', defaultValue: '') dynamic unionJson,
            @JsonKey(name: 'vc', defaultValue: '') dynamic virtualJson),
  }) {
    assert($default != null);
    assert(named != null);
    return $default(bankJson, onlineJson, wechatJson, quickJson, aliJson,
        unionJson, virtualJson);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        @JsonKey(name: '1', defaultValue: '') dynamic bankJson,
        @JsonKey(name: '2', defaultValue: '') dynamic onlineJson,
        @JsonKey(name: '3', defaultValue: '') dynamic wechatJson,
        @JsonKey(name: '4', defaultValue: '') dynamic quickJson,
        @JsonKey(name: '5', defaultValue: '') dynamic aliJson,
        @JsonKey(name: '7', defaultValue: '') dynamic unionJson,
        @JsonKey(name: '8', defaultValue: '') dynamic virtualJson), {
    Result named(
        @JsonKey(name: 'localbank', defaultValue: '') dynamic bankJson,
        @JsonKey(name: 'onlinepay', defaultValue: '') dynamic onlineJson,
        @JsonKey(name: 'wechatpay', defaultValue: '') dynamic wechatJson,
        @JsonKey(name: 'quickpay', defaultValue: '') dynamic quickJson,
        @JsonKey(name: 'alipay', defaultValue: '') dynamic aliJson,
        @JsonKey(name: 'unionpay', defaultValue: '') dynamic unionJson,
        @JsonKey(name: 'vc', defaultValue: '') dynamic virtualJson),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(bankJson, onlineJson, wechatJson, quickJson, aliJson,
          unionJson, virtualJson);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_PaymentRaw value), {
    @required Result named(_PaymentRawNamed value),
  }) {
    assert($default != null);
    assert(named != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_PaymentRaw value), {
    Result named(_PaymentRawNamed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PaymentRawToJson(this)..['runtimeType'] = 'default';
  }
}

abstract class _PaymentRaw implements PaymentRaw {
  const factory _PaymentRaw(
          {@JsonKey(name: '1', defaultValue: '') dynamic bankJson,
          @JsonKey(name: '2', defaultValue: '') dynamic onlineJson,
          @JsonKey(name: '3', defaultValue: '') dynamic wechatJson,
          @JsonKey(name: '4', defaultValue: '') dynamic quickJson,
          @JsonKey(name: '5', defaultValue: '') dynamic aliJson,
          @JsonKey(name: '7', defaultValue: '') dynamic unionJson,
          @JsonKey(name: '8', defaultValue: '') dynamic virtualJson}) =
      _$_PaymentRaw;

  factory _PaymentRaw.fromJson(Map<String, dynamic> json) =
      _$_PaymentRaw.fromJson;

  @override
  @JsonKey(name: '1', defaultValue: '')
  dynamic get bankJson;
  @override
  @JsonKey(name: '2', defaultValue: '')
  dynamic get onlineJson;
  @override
  @JsonKey(name: '3', defaultValue: '')
  dynamic get wechatJson;
  @override
  @JsonKey(name: '4', defaultValue: '')
  dynamic get quickJson;
  @override
  @JsonKey(name: '5', defaultValue: '')
  dynamic get aliJson;
  @override
  @JsonKey(name: '7', defaultValue: '')
  dynamic get unionJson;
  @override
  @JsonKey(name: '8', defaultValue: '')
  dynamic get virtualJson;
  @override
  _$PaymentRawCopyWith<_PaymentRaw> get copyWith;
}

abstract class _$PaymentRawNamedCopyWith<$Res>
    implements $PaymentRawCopyWith<$Res> {
  factory _$PaymentRawNamedCopyWith(
          _PaymentRawNamed value, $Res Function(_PaymentRawNamed) then) =
      __$PaymentRawNamedCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'localbank', defaultValue: '') dynamic bankJson,
      @JsonKey(name: 'onlinepay', defaultValue: '') dynamic onlineJson,
      @JsonKey(name: 'wechatpay', defaultValue: '') dynamic wechatJson,
      @JsonKey(name: 'quickpay', defaultValue: '') dynamic quickJson,
      @JsonKey(name: 'alipay', defaultValue: '') dynamic aliJson,
      @JsonKey(name: 'unionpay', defaultValue: '') dynamic unionJson,
      @JsonKey(name: 'vc', defaultValue: '') dynamic virtualJson});
}

class __$PaymentRawNamedCopyWithImpl<$Res>
    extends _$PaymentRawCopyWithImpl<$Res>
    implements _$PaymentRawNamedCopyWith<$Res> {
  __$PaymentRawNamedCopyWithImpl(
      _PaymentRawNamed _value, $Res Function(_PaymentRawNamed) _then)
      : super(_value, (v) => _then(v as _PaymentRawNamed));

  @override
  _PaymentRawNamed get _value => super._value as _PaymentRawNamed;

  @override
  $Res call({
    Object bankJson = freezed,
    Object onlineJson = freezed,
    Object wechatJson = freezed,
    Object quickJson = freezed,
    Object aliJson = freezed,
    Object unionJson = freezed,
    Object virtualJson = freezed,
  }) {
    return _then(_PaymentRawNamed(
      bankJson: bankJson == freezed ? _value.bankJson : bankJson as dynamic,
      onlineJson:
          onlineJson == freezed ? _value.onlineJson : onlineJson as dynamic,
      wechatJson:
          wechatJson == freezed ? _value.wechatJson : wechatJson as dynamic,
      quickJson: quickJson == freezed ? _value.quickJson : quickJson as dynamic,
      aliJson: aliJson == freezed ? _value.aliJson : aliJson as dynamic,
      unionJson: unionJson == freezed ? _value.unionJson : unionJson as dynamic,
      virtualJson:
          virtualJson == freezed ? _value.virtualJson : virtualJson as dynamic,
    ));
  }
}

@JsonSerializable()
class _$_PaymentRawNamed implements _PaymentRawNamed {
  const _$_PaymentRawNamed(
      {@JsonKey(name: 'localbank', defaultValue: '') this.bankJson,
      @JsonKey(name: 'onlinepay', defaultValue: '') this.onlineJson,
      @JsonKey(name: 'wechatpay', defaultValue: '') this.wechatJson,
      @JsonKey(name: 'quickpay', defaultValue: '') this.quickJson,
      @JsonKey(name: 'alipay', defaultValue: '') this.aliJson,
      @JsonKey(name: 'unionpay', defaultValue: '') this.unionJson,
      @JsonKey(name: 'vc', defaultValue: '') this.virtualJson});

  factory _$_PaymentRawNamed.fromJson(Map<String, dynamic> json) =>
      _$_$_PaymentRawNamedFromJson(json);

  @override
  @JsonKey(name: 'localbank', defaultValue: '')
  final dynamic bankJson;
  @override
  @JsonKey(name: 'onlinepay', defaultValue: '')
  final dynamic onlineJson;
  @override
  @JsonKey(name: 'wechatpay', defaultValue: '')
  final dynamic wechatJson;
  @override
  @JsonKey(name: 'quickpay', defaultValue: '')
  final dynamic quickJson;
  @override
  @JsonKey(name: 'alipay', defaultValue: '')
  final dynamic aliJson;
  @override
  @JsonKey(name: 'unionpay', defaultValue: '')
  final dynamic unionJson;
  @override
  @JsonKey(name: 'vc', defaultValue: '')
  final dynamic virtualJson;

  @override
  String toString() {
    return 'PaymentRaw.named(bankJson: $bankJson, onlineJson: $onlineJson, wechatJson: $wechatJson, quickJson: $quickJson, aliJson: $aliJson, unionJson: $unionJson, virtualJson: $virtualJson)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentRawNamed &&
            (identical(other.bankJson, bankJson) ||
                const DeepCollectionEquality()
                    .equals(other.bankJson, bankJson)) &&
            (identical(other.onlineJson, onlineJson) ||
                const DeepCollectionEquality()
                    .equals(other.onlineJson, onlineJson)) &&
            (identical(other.wechatJson, wechatJson) ||
                const DeepCollectionEquality()
                    .equals(other.wechatJson, wechatJson)) &&
            (identical(other.quickJson, quickJson) ||
                const DeepCollectionEquality()
                    .equals(other.quickJson, quickJson)) &&
            (identical(other.aliJson, aliJson) ||
                const DeepCollectionEquality()
                    .equals(other.aliJson, aliJson)) &&
            (identical(other.unionJson, unionJson) ||
                const DeepCollectionEquality()
                    .equals(other.unionJson, unionJson)) &&
            (identical(other.virtualJson, virtualJson) ||
                const DeepCollectionEquality()
                    .equals(other.virtualJson, virtualJson)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(bankJson) ^
      const DeepCollectionEquality().hash(onlineJson) ^
      const DeepCollectionEquality().hash(wechatJson) ^
      const DeepCollectionEquality().hash(quickJson) ^
      const DeepCollectionEquality().hash(aliJson) ^
      const DeepCollectionEquality().hash(unionJson) ^
      const DeepCollectionEquality().hash(virtualJson);

  @override
  _$PaymentRawNamedCopyWith<_PaymentRawNamed> get copyWith =>
      __$PaymentRawNamedCopyWithImpl<_PaymentRawNamed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        @JsonKey(name: '1', defaultValue: '') dynamic bankJson,
        @JsonKey(name: '2', defaultValue: '') dynamic onlineJson,
        @JsonKey(name: '3', defaultValue: '') dynamic wechatJson,
        @JsonKey(name: '4', defaultValue: '') dynamic quickJson,
        @JsonKey(name: '5', defaultValue: '') dynamic aliJson,
        @JsonKey(name: '7', defaultValue: '') dynamic unionJson,
        @JsonKey(name: '8', defaultValue: '') dynamic virtualJson), {
    @required
        Result named(
            @JsonKey(name: 'localbank', defaultValue: '') dynamic bankJson,
            @JsonKey(name: 'onlinepay', defaultValue: '') dynamic onlineJson,
            @JsonKey(name: 'wechatpay', defaultValue: '') dynamic wechatJson,
            @JsonKey(name: 'quickpay', defaultValue: '') dynamic quickJson,
            @JsonKey(name: 'alipay', defaultValue: '') dynamic aliJson,
            @JsonKey(name: 'unionpay', defaultValue: '') dynamic unionJson,
            @JsonKey(name: 'vc', defaultValue: '') dynamic virtualJson),
  }) {
    assert($default != null);
    assert(named != null);
    return named(bankJson, onlineJson, wechatJson, quickJson, aliJson,
        unionJson, virtualJson);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        @JsonKey(name: '1', defaultValue: '') dynamic bankJson,
        @JsonKey(name: '2', defaultValue: '') dynamic onlineJson,
        @JsonKey(name: '3', defaultValue: '') dynamic wechatJson,
        @JsonKey(name: '4', defaultValue: '') dynamic quickJson,
        @JsonKey(name: '5', defaultValue: '') dynamic aliJson,
        @JsonKey(name: '7', defaultValue: '') dynamic unionJson,
        @JsonKey(name: '8', defaultValue: '') dynamic virtualJson), {
    Result named(
        @JsonKey(name: 'localbank', defaultValue: '') dynamic bankJson,
        @JsonKey(name: 'onlinepay', defaultValue: '') dynamic onlineJson,
        @JsonKey(name: 'wechatpay', defaultValue: '') dynamic wechatJson,
        @JsonKey(name: 'quickpay', defaultValue: '') dynamic quickJson,
        @JsonKey(name: 'alipay', defaultValue: '') dynamic aliJson,
        @JsonKey(name: 'unionpay', defaultValue: '') dynamic unionJson,
        @JsonKey(name: 'vc', defaultValue: '') dynamic virtualJson),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (named != null) {
      return named(bankJson, onlineJson, wechatJson, quickJson, aliJson,
          unionJson, virtualJson);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_PaymentRaw value), {
    @required Result named(_PaymentRawNamed value),
  }) {
    assert($default != null);
    assert(named != null);
    return named(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_PaymentRaw value), {
    Result named(_PaymentRawNamed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (named != null) {
      return named(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PaymentRawNamedToJson(this)..['runtimeType'] = 'named';
  }
}

abstract class _PaymentRawNamed implements PaymentRaw {
  const factory _PaymentRawNamed(
          {@JsonKey(name: 'localbank', defaultValue: '') dynamic bankJson,
          @JsonKey(name: 'onlinepay', defaultValue: '') dynamic onlineJson,
          @JsonKey(name: 'wechatpay', defaultValue: '') dynamic wechatJson,
          @JsonKey(name: 'quickpay', defaultValue: '') dynamic quickJson,
          @JsonKey(name: 'alipay', defaultValue: '') dynamic aliJson,
          @JsonKey(name: 'unionpay', defaultValue: '') dynamic unionJson,
          @JsonKey(name: 'vc', defaultValue: '') dynamic virtualJson}) =
      _$_PaymentRawNamed;

  factory _PaymentRawNamed.fromJson(Map<String, dynamic> json) =
      _$_PaymentRawNamed.fromJson;

  @override
  @JsonKey(name: 'localbank', defaultValue: '')
  dynamic get bankJson;
  @override
  @JsonKey(name: 'onlinepay', defaultValue: '')
  dynamic get onlineJson;
  @override
  @JsonKey(name: 'wechatpay', defaultValue: '')
  dynamic get wechatJson;
  @override
  @JsonKey(name: 'quickpay', defaultValue: '')
  dynamic get quickJson;
  @override
  @JsonKey(name: 'alipay', defaultValue: '')
  dynamic get aliJson;
  @override
  @JsonKey(name: 'unionpay', defaultValue: '')
  dynamic get unionJson;
  @override
  @JsonKey(name: 'vc', defaultValue: '')
  dynamic get virtualJson;
  @override
  _$PaymentRawNamedCopyWith<_PaymentRawNamed> get copyWith;
}
