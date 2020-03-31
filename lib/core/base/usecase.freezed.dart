// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UseCaseParamsTearOff {
  const _$UseCaseParamsTearOff();

  NoParams none() {
    return const NoParams();
  }

  DataParams data(dynamic data) {
    return DataParams(
      data,
    );
  }

  ListParams list(List<dynamic> data) {
    return ListParams(
      data,
    );
  }
}

// ignore: unused_element
const $UseCaseParams = _$UseCaseParamsTearOff();

mixin _$UseCaseParams {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result none(),
    @required Result data(dynamic data),
    @required Result list(List<dynamic> data),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result none(),
    Result data(dynamic data),
    Result list(List<dynamic> data),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result none(NoParams value),
    @required Result data(DataParams value),
    @required Result list(ListParams value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result none(NoParams value),
    Result data(DataParams value),
    Result list(ListParams value),
    @required Result orElse(),
  });
}

abstract class $UseCaseParamsCopyWith<$Res> {
  factory $UseCaseParamsCopyWith(
          UseCaseParams value, $Res Function(UseCaseParams) then) =
      _$UseCaseParamsCopyWithImpl<$Res>;
}

class _$UseCaseParamsCopyWithImpl<$Res>
    implements $UseCaseParamsCopyWith<$Res> {
  _$UseCaseParamsCopyWithImpl(this._value, this._then);

  final UseCaseParams _value;
  // ignore: unused_field
  final $Res Function(UseCaseParams) _then;
}

abstract class $NoParamsCopyWith<$Res> {
  factory $NoParamsCopyWith(NoParams value, $Res Function(NoParams) then) =
      _$NoParamsCopyWithImpl<$Res>;
}

class _$NoParamsCopyWithImpl<$Res> extends _$UseCaseParamsCopyWithImpl<$Res>
    implements $NoParamsCopyWith<$Res> {
  _$NoParamsCopyWithImpl(NoParams _value, $Res Function(NoParams) _then)
      : super(_value, (v) => _then(v as NoParams));

  @override
  NoParams get _value => super._value as NoParams;
}

class _$NoParams implements NoParams {
  const _$NoParams();

  @override
  String toString() {
    return 'UseCaseParams.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoParams);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result none(),
    @required Result data(dynamic data),
    @required Result list(List<dynamic> data),
  }) {
    assert(none != null);
    assert(data != null);
    assert(list != null);
    return none();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result none(),
    Result data(dynamic data),
    Result list(List<dynamic> data),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result none(NoParams value),
    @required Result data(DataParams value),
    @required Result list(ListParams value),
  }) {
    assert(none != null);
    assert(data != null);
    assert(list != null);
    return none(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result none(NoParams value),
    Result data(DataParams value),
    Result list(ListParams value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class NoParams implements UseCaseParams {
  const factory NoParams() = _$NoParams;
}

abstract class $DataParamsCopyWith<$Res> {
  factory $DataParamsCopyWith(
          DataParams value, $Res Function(DataParams) then) =
      _$DataParamsCopyWithImpl<$Res>;
  $Res call({dynamic data});
}

class _$DataParamsCopyWithImpl<$Res> extends _$UseCaseParamsCopyWithImpl<$Res>
    implements $DataParamsCopyWith<$Res> {
  _$DataParamsCopyWithImpl(DataParams _value, $Res Function(DataParams) _then)
      : super(_value, (v) => _then(v as DataParams));

  @override
  DataParams get _value => super._value as DataParams;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(DataParams(
      data == freezed ? _value.data : data as dynamic,
    ));
  }
}

class _$DataParams implements DataParams {
  const _$DataParams(this.data) : assert(data != null);

  @override
  final dynamic data;

  @override
  String toString() {
    return 'UseCaseParams.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DataParams &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  $DataParamsCopyWith<DataParams> get copyWith =>
      _$DataParamsCopyWithImpl<DataParams>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result none(),
    @required Result data(dynamic data),
    @required Result list(List<dynamic> data),
  }) {
    assert(none != null);
    assert(data != null);
    assert(list != null);
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result none(),
    Result data(dynamic data),
    Result list(List<dynamic> data),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result none(NoParams value),
    @required Result data(DataParams value),
    @required Result list(ListParams value),
  }) {
    assert(none != null);
    assert(data != null);
    assert(list != null);
    return data(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result none(NoParams value),
    Result data(DataParams value),
    Result list(ListParams value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class DataParams implements UseCaseParams {
  const factory DataParams(dynamic data) = _$DataParams;

  dynamic get data;
  $DataParamsCopyWith<DataParams> get copyWith;
}

abstract class $ListParamsCopyWith<$Res> {
  factory $ListParamsCopyWith(
          ListParams value, $Res Function(ListParams) then) =
      _$ListParamsCopyWithImpl<$Res>;
  $Res call({List<dynamic> data});
}

class _$ListParamsCopyWithImpl<$Res> extends _$UseCaseParamsCopyWithImpl<$Res>
    implements $ListParamsCopyWith<$Res> {
  _$ListParamsCopyWithImpl(ListParams _value, $Res Function(ListParams) _then)
      : super(_value, (v) => _then(v as ListParams));

  @override
  ListParams get _value => super._value as ListParams;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(ListParams(
      data == freezed ? _value.data : data as List<dynamic>,
    ));
  }
}

class _$ListParams implements ListParams {
  const _$ListParams(this.data) : assert(data != null);

  @override
  final List<dynamic> data;

  @override
  String toString() {
    return 'UseCaseParams.list(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListParams &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  $ListParamsCopyWith<ListParams> get copyWith =>
      _$ListParamsCopyWithImpl<ListParams>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result none(),
    @required Result data(dynamic data),
    @required Result list(List<dynamic> data),
  }) {
    assert(none != null);
    assert(data != null);
    assert(list != null);
    return list(this.data);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result none(),
    Result data(dynamic data),
    Result list(List<dynamic> data),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (list != null) {
      return list(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result none(NoParams value),
    @required Result data(DataParams value),
    @required Result list(ListParams value),
  }) {
    assert(none != null);
    assert(data != null);
    assert(list != null);
    return list(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result none(NoParams value),
    Result data(DataParams value),
    Result list(ListParams value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (list != null) {
      return list(this);
    }
    return orElse();
  }
}

abstract class ListParams implements UseCaseParams {
  const factory ListParams(List<dynamic> data) = _$ListParams;

  List<dynamic> get data;
  $ListParamsCopyWith<ListParams> get copyWith;
}
