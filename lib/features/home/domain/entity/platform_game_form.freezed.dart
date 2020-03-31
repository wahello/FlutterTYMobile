// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'platform_game_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PlatformGameForm _$PlatformGameFormFromJson(Map<String, dynamic> json) {
  return _PlatformGameForm.fromJson(json);
}

class _$PlatformGameFormTearOff {
  const _$PlatformGameFormTearOff();

  _PlatformGameForm call(
      {@required String category, @required String platform}) {
    return _PlatformGameForm(
      category: category,
      platform: platform,
    );
  }
}

// ignore: unused_element
const $PlatformGameForm = _$PlatformGameFormTearOff();

mixin _$PlatformGameForm {
  String get category;
  String get platform;

  Map<String, dynamic> toJson();
  $PlatformGameFormCopyWith<PlatformGameForm> get copyWith;
}

abstract class $PlatformGameFormCopyWith<$Res> {
  factory $PlatformGameFormCopyWith(
          PlatformGameForm value, $Res Function(PlatformGameForm) then) =
      _$PlatformGameFormCopyWithImpl<$Res>;
  $Res call({String category, String platform});
}

class _$PlatformGameFormCopyWithImpl<$Res>
    implements $PlatformGameFormCopyWith<$Res> {
  _$PlatformGameFormCopyWithImpl(this._value, this._then);

  final PlatformGameForm _value;
  // ignore: unused_field
  final $Res Function(PlatformGameForm) _then;

  @override
  $Res call({
    Object category = freezed,
    Object platform = freezed,
  }) {
    return _then(_value.copyWith(
      category: category == freezed ? _value.category : category as String,
      platform: platform == freezed ? _value.platform : platform as String,
    ));
  }
}

abstract class _$PlatformGameFormCopyWith<$Res>
    implements $PlatformGameFormCopyWith<$Res> {
  factory _$PlatformGameFormCopyWith(
          _PlatformGameForm value, $Res Function(_PlatformGameForm) then) =
      __$PlatformGameFormCopyWithImpl<$Res>;
  @override
  $Res call({String category, String platform});
}

class __$PlatformGameFormCopyWithImpl<$Res>
    extends _$PlatformGameFormCopyWithImpl<$Res>
    implements _$PlatformGameFormCopyWith<$Res> {
  __$PlatformGameFormCopyWithImpl(
      _PlatformGameForm _value, $Res Function(_PlatformGameForm) _then)
      : super(_value, (v) => _then(v as _PlatformGameForm));

  @override
  _PlatformGameForm get _value => super._value as _PlatformGameForm;

  @override
  $Res call({
    Object category = freezed,
    Object platform = freezed,
  }) {
    return _then(_PlatformGameForm(
      category: category == freezed ? _value.category : category as String,
      platform: platform == freezed ? _value.platform : platform as String,
    ));
  }
}

@JsonSerializable()
class _$_PlatformGameForm implements _PlatformGameForm {
  const _$_PlatformGameForm({@required this.category, @required this.platform})
      : assert(category != null),
        assert(platform != null);

  factory _$_PlatformGameForm.fromJson(Map<String, dynamic> json) =>
      _$_$_PlatformGameFormFromJson(json);

  @override
  final String category;
  @override
  final String platform;

  @override
  String toString() {
    return 'PlatformGameForm(category: $category, platform: $platform)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlatformGameForm &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(platform);

  @override
  _$PlatformGameFormCopyWith<_PlatformGameForm> get copyWith =>
      __$PlatformGameFormCopyWithImpl<_PlatformGameForm>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PlatformGameFormToJson(this);
  }
}

abstract class _PlatformGameForm implements PlatformGameForm {
  const factory _PlatformGameForm(
      {@required String category,
      @required String platform}) = _$_PlatformGameForm;

  factory _PlatformGameForm.fromJson(Map<String, dynamic> json) =
      _$_PlatformGameForm.fromJson;

  @override
  String get category;
  @override
  String get platform;
  @override
  _$PlatformGameFormCopyWith<_PlatformGameForm> get copyWith;
}
