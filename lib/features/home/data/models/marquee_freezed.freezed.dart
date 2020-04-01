// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'marquee_freezed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MarqueeModel _$MarqueeModelFromJson(Map<String, dynamic> json) {
  return _MarqueeModel.fromJson(json);
}

class _$MarqueeModelTearOff {
  const _$MarqueeModelTearOff();

  _MarqueeModel call(
      {@required int id,
      @required String content,
      @required String url,
      @JsonKey(name: 'created_at', required: true) String createdAt,
      @JsonKey(name: 'updated_at', required: true) String updatedAt,
      @required String showDate}) {
    return _MarqueeModel(
      id: id,
      content: content,
      url: url,
      createdAt: createdAt,
      updatedAt: updatedAt,
      showDate: showDate,
    );
  }
}

// ignore: unused_element
const $MarqueeModel = _$MarqueeModelTearOff();

mixin _$MarqueeModel {
  int get id;
  String get content;
  String get url;
  @JsonKey(name: 'created_at', required: true)
  String get createdAt;
  @JsonKey(name: 'updated_at', required: true)
  String get updatedAt;
  String get showDate;

  Map<String, dynamic> toJson();
  $MarqueeModelCopyWith<MarqueeModel> get copyWith;
}

abstract class $MarqueeModelCopyWith<$Res> {
  factory $MarqueeModelCopyWith(
          MarqueeModel value, $Res Function(MarqueeModel) then) =
      _$MarqueeModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String content,
      String url,
      @JsonKey(name: 'created_at', required: true) String createdAt,
      @JsonKey(name: 'updated_at', required: true) String updatedAt,
      String showDate});
}

class _$MarqueeModelCopyWithImpl<$Res> implements $MarqueeModelCopyWith<$Res> {
  _$MarqueeModelCopyWithImpl(this._value, this._then);

  final MarqueeModel _value;
  // ignore: unused_field
  final $Res Function(MarqueeModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object content = freezed,
    Object url = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object showDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      content: content == freezed ? _value.content : content as String,
      url: url == freezed ? _value.url : url as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      showDate: showDate == freezed ? _value.showDate : showDate as String,
    ));
  }
}

abstract class _$MarqueeModelCopyWith<$Res>
    implements $MarqueeModelCopyWith<$Res> {
  factory _$MarqueeModelCopyWith(
          _MarqueeModel value, $Res Function(_MarqueeModel) then) =
      __$MarqueeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String content,
      String url,
      @JsonKey(name: 'created_at', required: true) String createdAt,
      @JsonKey(name: 'updated_at', required: true) String updatedAt,
      String showDate});
}

class __$MarqueeModelCopyWithImpl<$Res> extends _$MarqueeModelCopyWithImpl<$Res>
    implements _$MarqueeModelCopyWith<$Res> {
  __$MarqueeModelCopyWithImpl(
      _MarqueeModel _value, $Res Function(_MarqueeModel) _then)
      : super(_value, (v) => _then(v as _MarqueeModel));

  @override
  _MarqueeModel get _value => super._value as _MarqueeModel;

  @override
  $Res call({
    Object id = freezed,
    Object content = freezed,
    Object url = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object showDate = freezed,
  }) {
    return _then(_MarqueeModel(
      id: id == freezed ? _value.id : id as int,
      content: content == freezed ? _value.content : content as String,
      url: url == freezed ? _value.url : url as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      showDate: showDate == freezed ? _value.showDate : showDate as String,
    ));
  }
}

@JsonSerializable()
class _$_MarqueeModel implements _MarqueeModel {
  const _$_MarqueeModel(
      {@required this.id,
      @required this.content,
      @required this.url,
      @JsonKey(name: 'created_at', required: true) this.createdAt,
      @JsonKey(name: 'updated_at', required: true) this.updatedAt,
      @required this.showDate})
      : assert(id != null),
        assert(content != null),
        assert(url != null),
        assert(showDate != null);

  factory _$_MarqueeModel.fromJson(Map<String, dynamic> json) =>
      _$_$_MarqueeModelFromJson(json);

  @override
  final int id;
  @override
  final String content;
  @override
  final String url;
  @override
  @JsonKey(name: 'created_at', required: true)
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at', required: true)
  final String updatedAt;
  @override
  final String showDate;

  @override
  String toString() {
    return 'MarqueeModel(id: $id, content: $content, url: $url, createdAt: $createdAt, updatedAt: $updatedAt, showDate: $showDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MarqueeModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.showDate, showDate) ||
                const DeepCollectionEquality()
                    .equals(other.showDate, showDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(showDate);

  @override
  _$MarqueeModelCopyWith<_MarqueeModel> get copyWith =>
      __$MarqueeModelCopyWithImpl<_MarqueeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MarqueeModelToJson(this);
  }
}

abstract class _MarqueeModel implements MarqueeModel {
  const factory _MarqueeModel(
      {@required int id,
      @required String content,
      @required String url,
      @JsonKey(name: 'created_at', required: true) String createdAt,
      @JsonKey(name: 'updated_at', required: true) String updatedAt,
      @required String showDate}) = _$_MarqueeModel;

  factory _MarqueeModel.fromJson(Map<String, dynamic> json) =
      _$_MarqueeModel.fromJson;

  @override
  int get id;
  @override
  String get content;
  @override
  String get url;
  @override
  @JsonKey(name: 'created_at', required: true)
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at', required: true)
  String get updatedAt;
  @override
  String get showDate;
  @override
  _$MarqueeModelCopyWith<_MarqueeModel> get copyWith;
}

class _$MarqueeEntityTearOff {
  const _$MarqueeEntityTearOff();

  _MarqueeEntity call(
      {@required int id, @required String content, @required String url}) {
    return _MarqueeEntity(
      id: id,
      content: content,
      url: url,
    );
  }
}

// ignore: unused_element
const $MarqueeEntity = _$MarqueeEntityTearOff();

mixin _$MarqueeEntity {
  int get id;
  String get content;
  String get url;

  $MarqueeEntityCopyWith<MarqueeEntity> get copyWith;
}

abstract class $MarqueeEntityCopyWith<$Res> {
  factory $MarqueeEntityCopyWith(
          MarqueeEntity value, $Res Function(MarqueeEntity) then) =
      _$MarqueeEntityCopyWithImpl<$Res>;
  $Res call({int id, String content, String url});
}

class _$MarqueeEntityCopyWithImpl<$Res>
    implements $MarqueeEntityCopyWith<$Res> {
  _$MarqueeEntityCopyWithImpl(this._value, this._then);

  final MarqueeEntity _value;
  // ignore: unused_field
  final $Res Function(MarqueeEntity) _then;

  @override
  $Res call({
    Object id = freezed,
    Object content = freezed,
    Object url = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      content: content == freezed ? _value.content : content as String,
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

abstract class _$MarqueeEntityCopyWith<$Res>
    implements $MarqueeEntityCopyWith<$Res> {
  factory _$MarqueeEntityCopyWith(
          _MarqueeEntity value, $Res Function(_MarqueeEntity) then) =
      __$MarqueeEntityCopyWithImpl<$Res>;
  @override
  $Res call({int id, String content, String url});
}

class __$MarqueeEntityCopyWithImpl<$Res>
    extends _$MarqueeEntityCopyWithImpl<$Res>
    implements _$MarqueeEntityCopyWith<$Res> {
  __$MarqueeEntityCopyWithImpl(
      _MarqueeEntity _value, $Res Function(_MarqueeEntity) _then)
      : super(_value, (v) => _then(v as _MarqueeEntity));

  @override
  _MarqueeEntity get _value => super._value as _MarqueeEntity;

  @override
  $Res call({
    Object id = freezed,
    Object content = freezed,
    Object url = freezed,
  }) {
    return _then(_MarqueeEntity(
      id: id == freezed ? _value.id : id as int,
      content: content == freezed ? _value.content : content as String,
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

class _$_MarqueeEntity implements _MarqueeEntity {
  const _$_MarqueeEntity(
      {@required this.id, @required this.content, @required this.url})
      : assert(id != null),
        assert(content != null),
        assert(url != null);

  @override
  final int id;
  @override
  final String content;
  @override
  final String url;

  @override
  String toString() {
    return 'MarqueeEntity(id: $id, content: $content, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MarqueeEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(url);

  @override
  _$MarqueeEntityCopyWith<_MarqueeEntity> get copyWith =>
      __$MarqueeEntityCopyWithImpl<_MarqueeEntity>(this, _$identity);

  @override
  String operator [](String key) {
    return id.toString();
  }
}

abstract class _MarqueeEntity implements MarqueeEntity {
  const factory _MarqueeEntity(
      {@required int id,
      @required String content,
      @required String url}) = _$_MarqueeEntity;

  @override
  int get id;
  @override
  String get content;
  @override
  String get url;
  @override
  _$MarqueeEntityCopyWith<_MarqueeEntity> get copyWith;
}

MarqueeModelList _$MarqueeModelListFromJson(Map<String, dynamic> json) {
  return _MarqueeModelList.fromJson(json);
}

class _$MarqueeModelListTearOff {
  const _$MarqueeModelListTearOff();

  _MarqueeModelList call(
      {@required List<MarqueeModel> marquees, @required int speed}) {
    return _MarqueeModelList(
      marquees: marquees,
      speed: speed,
    );
  }
}

// ignore: unused_element
const $MarqueeModelList = _$MarqueeModelListTearOff();

mixin _$MarqueeModelList {
  List<MarqueeModel> get marquees;
  int get speed;

  Map<String, dynamic> toJson();
  $MarqueeModelListCopyWith<MarqueeModelList> get copyWith;
}

abstract class $MarqueeModelListCopyWith<$Res> {
  factory $MarqueeModelListCopyWith(
          MarqueeModelList value, $Res Function(MarqueeModelList) then) =
      _$MarqueeModelListCopyWithImpl<$Res>;
  $Res call({List<MarqueeModel> marquees, int speed});
}

class _$MarqueeModelListCopyWithImpl<$Res>
    implements $MarqueeModelListCopyWith<$Res> {
  _$MarqueeModelListCopyWithImpl(this._value, this._then);

  final MarqueeModelList _value;
  // ignore: unused_field
  final $Res Function(MarqueeModelList) _then;

  @override
  $Res call({
    Object marquees = freezed,
    Object speed = freezed,
  }) {
    return _then(_value.copyWith(
      marquees: marquees == freezed
          ? _value.marquees
          : marquees as List<MarqueeModel>,
      speed: speed == freezed ? _value.speed : speed as int,
    ));
  }
}

abstract class _$MarqueeModelListCopyWith<$Res>
    implements $MarqueeModelListCopyWith<$Res> {
  factory _$MarqueeModelListCopyWith(
          _MarqueeModelList value, $Res Function(_MarqueeModelList) then) =
      __$MarqueeModelListCopyWithImpl<$Res>;
  @override
  $Res call({List<MarqueeModel> marquees, int speed});
}

class __$MarqueeModelListCopyWithImpl<$Res>
    extends _$MarqueeModelListCopyWithImpl<$Res>
    implements _$MarqueeModelListCopyWith<$Res> {
  __$MarqueeModelListCopyWithImpl(
      _MarqueeModelList _value, $Res Function(_MarqueeModelList) _then)
      : super(_value, (v) => _then(v as _MarqueeModelList));

  @override
  _MarqueeModelList get _value => super._value as _MarqueeModelList;

  @override
  $Res call({
    Object marquees = freezed,
    Object speed = freezed,
  }) {
    return _then(_MarqueeModelList(
      marquees: marquees == freezed
          ? _value.marquees
          : marquees as List<MarqueeModel>,
      speed: speed == freezed ? _value.speed : speed as int,
    ));
  }
}

@JsonSerializable()
class _$_MarqueeModelList implements _MarqueeModelList {
  const _$_MarqueeModelList({@required this.marquees, @required this.speed})
      : assert(marquees != null),
        assert(speed != null);

  factory _$_MarqueeModelList.fromJson(Map<String, dynamic> json) =>
      _$_$_MarqueeModelListFromJson(json);

  @override
  final List<MarqueeModel> marquees;
  @override
  final int speed;

  @override
  String toString() {
    return 'MarqueeModelList(marquees: $marquees, speed: $speed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MarqueeModelList &&
            (identical(other.marquees, marquees) ||
                const DeepCollectionEquality()
                    .equals(other.marquees, marquees)) &&
            (identical(other.speed, speed) ||
                const DeepCollectionEquality().equals(other.speed, speed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(marquees) ^
      const DeepCollectionEquality().hash(speed);

  @override
  _$MarqueeModelListCopyWith<_MarqueeModelList> get copyWith =>
      __$MarqueeModelListCopyWithImpl<_MarqueeModelList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MarqueeModelListToJson(this);
  }
}

abstract class _MarqueeModelList implements MarqueeModelList {
  const factory _MarqueeModelList(
      {@required List<MarqueeModel> marquees,
      @required int speed}) = _$_MarqueeModelList;

  factory _MarqueeModelList.fromJson(Map<String, dynamic> json) =
      _$_MarqueeModelList.fromJson;

  @override
  List<MarqueeModel> get marquees;
  @override
  int get speed;
  @override
  _$MarqueeModelListCopyWith<_MarqueeModelList> get copyWith;
}
