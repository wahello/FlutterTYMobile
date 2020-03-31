// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'game_category_freezed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
GameCategoryModel _$GameCategoryModelFromJson(Map<String, dynamic> json) {
  return _GameCategoryModel.fromJson(json);
}

class _$GameCategoryModelTearOff {
  const _$GameCategoryModelTearOff();

  _GameCategoryModel call(
      {@required @HiveField(0) String ch,
      @required @HiveField(1) String type}) {
    return _GameCategoryModel(
      ch: ch,
      type: type,
    );
  }
}

// ignore: unused_element
const $GameCategoryModel = _$GameCategoryModelTearOff();

mixin _$GameCategoryModel {
  @HiveField(0)
  String get ch;
  @HiveField(1)
  String get type;

  Map<String, dynamic> toJson();
  $GameCategoryModelCopyWith<GameCategoryModel> get copyWith;
}

abstract class $GameCategoryModelCopyWith<$Res> {
  factory $GameCategoryModelCopyWith(
          GameCategoryModel value, $Res Function(GameCategoryModel) then) =
      _$GameCategoryModelCopyWithImpl<$Res>;
  $Res call({@HiveField(0) String ch, @HiveField(1) String type});
}

class _$GameCategoryModelCopyWithImpl<$Res>
    implements $GameCategoryModelCopyWith<$Res> {
  _$GameCategoryModelCopyWithImpl(this._value, this._then);

  final GameCategoryModel _value;
  // ignore: unused_field
  final $Res Function(GameCategoryModel) _then;

  @override
  $Res call({
    Object ch = freezed,
    Object type = freezed,
  }) {
    return _then(_value.copyWith(
      ch: ch == freezed ? _value.ch : ch as String,
      type: type == freezed ? _value.type : type as String,
    ));
  }
}

abstract class _$GameCategoryModelCopyWith<$Res>
    implements $GameCategoryModelCopyWith<$Res> {
  factory _$GameCategoryModelCopyWith(
          _GameCategoryModel value, $Res Function(_GameCategoryModel) then) =
      __$GameCategoryModelCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) String ch, @HiveField(1) String type});
}

class __$GameCategoryModelCopyWithImpl<$Res>
    extends _$GameCategoryModelCopyWithImpl<$Res>
    implements _$GameCategoryModelCopyWith<$Res> {
  __$GameCategoryModelCopyWithImpl(
      _GameCategoryModel _value, $Res Function(_GameCategoryModel) _then)
      : super(_value, (v) => _then(v as _GameCategoryModel));

  @override
  _GameCategoryModel get _value => super._value as _GameCategoryModel;

  @override
  $Res call({
    Object ch = freezed,
    Object type = freezed,
  }) {
    return _then(_GameCategoryModel(
      ch: ch == freezed ? _value.ch : ch as String,
      type: type == freezed ? _value.type : type as String,
    ));
  }
}

@JsonSerializable()
@HiveType(typeId: 103)
class _$_GameCategoryModel implements _GameCategoryModel {
  const _$_GameCategoryModel(
      {@required @HiveField(0) this.ch, @required @HiveField(1) this.type})
      : assert(ch != null),
        assert(type != null);

  factory _$_GameCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GameCategoryModelFromJson(json);

  @override
  @HiveField(0)
  final String ch;
  @override
  @HiveField(1)
  final String type;

  @override
  String toString() {
    return 'GameCategoryModel(ch: $ch, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GameCategoryModel &&
            (identical(other.ch, ch) ||
                const DeepCollectionEquality().equals(other.ch, ch)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(ch) ^
      const DeepCollectionEquality().hash(type);

  @override
  _$GameCategoryModelCopyWith<_GameCategoryModel> get copyWith =>
      __$GameCategoryModelCopyWithImpl<_GameCategoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GameCategoryModelToJson(this);
  }

  @override
  String operator [](String key) {
    return type.toString();
  }
}

abstract class _GameCategoryModel implements GameCategoryModel {
  const factory _GameCategoryModel(
      {@required @HiveField(0) String ch,
      @required @HiveField(1) String type}) = _$_GameCategoryModel;

  factory _GameCategoryModel.fromJson(Map<String, dynamic> json) =
      _$_GameCategoryModel.fromJson;

  @override
  @HiveField(0)
  String get ch;
  @override
  @HiveField(1)
  String get type;
  @override
  _$GameCategoryModelCopyWith<_GameCategoryModel> get copyWith;
}
