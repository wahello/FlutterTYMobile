// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'game_platform_freezed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
GamePlatformFreezed _$GamePlatformFreezedFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'entity':
      return GamePlatformEntity.fromJson(json);
    case 'model':
      return GamePlatformModel.fromJson(json);

    default:
      throw FallThroughError();
  }
}

class _$GamePlatformFreezedTearOff {
  const _$GamePlatformFreezedTearOff();

  GamePlatformEntity entity(
      {@HiveField(0) @JsonKey(name: 'class', required: true) String className,
      @required @HiveField(1) String ch,
      @required @HiveField(2) String site,
      @HiveField(3) @JsonKey(name: 'type', required: true) String category}) {
    return GamePlatformEntity(
      className: className,
      ch: ch,
      site: site,
      category: category,
    );
  }

  GamePlatformModel model(
      {@JsonKey(name: 'class', required: true) String className,
      @required String ch,
      @required int cid,
      @required String site,
      @required String site2,
      @JsonKey(name: 'type', required: true) String category,
      @required int sort,
      @required String status}) {
    return GamePlatformModel(
      className: className,
      ch: ch,
      cid: cid,
      site: site,
      site2: site2,
      category: category,
      sort: sort,
      status: status,
    );
  }
}

// ignore: unused_element
const $GamePlatformFreezed = _$GamePlatformFreezedTearOff();

mixin _$GamePlatformFreezed {
  @HiveField(0)
  @JsonKey(name: 'class', required: true)
  String get className;
  @HiveField(1)
  String get ch;
  @HiveField(2)
  String get site;
  @HiveField(3)
  @JsonKey(name: 'type', required: true)
  String get category;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result entity(
            @HiveField(0)
            @JsonKey(name: 'class', required: true)
                String className,
            @required
            @HiveField(1)
                String ch,
            @required
            @HiveField(2)
                String site,
            @HiveField(3)
            @JsonKey(name: 'type', required: true)
                String category),
    @required
        Result model(
            @JsonKey(name: 'class', required: true) String className,
            @required String ch,
            @required int cid,
            @required String site,
            @required String site2,
            @JsonKey(name: 'type', required: true) String category,
            @required int sort,
            @required String status),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result entity(
        @HiveField(0) @JsonKey(name: 'class', required: true) String className,
        @required @HiveField(1) String ch,
        @required @HiveField(2) String site,
        @HiveField(3) @JsonKey(name: 'type', required: true) String category),
    Result model(
        @JsonKey(name: 'class', required: true) String className,
        @required String ch,
        @required int cid,
        @required String site,
        @required String site2,
        @JsonKey(name: 'type', required: true) String category,
        @required int sort,
        @required String status),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result entity(GamePlatformEntity value),
    @required Result model(GamePlatformModel value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result entity(GamePlatformEntity value),
    Result model(GamePlatformModel value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
  $GamePlatformFreezedCopyWith<GamePlatformFreezed> get copyWith;
}

abstract class $GamePlatformFreezedCopyWith<$Res> {
  factory $GamePlatformFreezedCopyWith(
          GamePlatformFreezed value, $Res Function(GamePlatformFreezed) then) =
      _$GamePlatformFreezedCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) @JsonKey(name: 'class', required: true) String className,
      @HiveField(1) String ch,
      @HiveField(2) String site,
      @HiveField(3) @JsonKey(name: 'type', required: true) String category});
}

class _$GamePlatformFreezedCopyWithImpl<$Res>
    implements $GamePlatformFreezedCopyWith<$Res> {
  _$GamePlatformFreezedCopyWithImpl(this._value, this._then);

  final GamePlatformFreezed _value;
  // ignore: unused_field
  final $Res Function(GamePlatformFreezed) _then;

  @override
  $Res call({
    Object className = freezed,
    Object ch = freezed,
    Object site = freezed,
    Object category = freezed,
  }) {
    return _then(_value.copyWith(
      className: className == freezed ? _value.className : className as String,
      ch: ch == freezed ? _value.ch : ch as String,
      site: site == freezed ? _value.site : site as String,
      category: category == freezed ? _value.category : category as String,
    ));
  }
}

abstract class $GamePlatformEntityCopyWith<$Res>
    implements $GamePlatformFreezedCopyWith<$Res> {
  factory $GamePlatformEntityCopyWith(
          GamePlatformEntity value, $Res Function(GamePlatformEntity) then) =
      _$GamePlatformEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) @JsonKey(name: 'class', required: true) String className,
      @HiveField(1) String ch,
      @HiveField(2) String site,
      @HiveField(3) @JsonKey(name: 'type', required: true) String category});
}

class _$GamePlatformEntityCopyWithImpl<$Res>
    extends _$GamePlatformFreezedCopyWithImpl<$Res>
    implements $GamePlatformEntityCopyWith<$Res> {
  _$GamePlatformEntityCopyWithImpl(
      GamePlatformEntity _value, $Res Function(GamePlatformEntity) _then)
      : super(_value, (v) => _then(v as GamePlatformEntity));

  @override
  GamePlatformEntity get _value => super._value as GamePlatformEntity;

  @override
  $Res call({
    Object className = freezed,
    Object ch = freezed,
    Object site = freezed,
    Object category = freezed,
  }) {
    return _then(GamePlatformEntity(
      className: className == freezed ? _value.className : className as String,
      ch: ch == freezed ? _value.ch : ch as String,
      site: site == freezed ? _value.site : site as String,
      category: category == freezed ? _value.category : category as String,
    ));
  }
}

@JsonSerializable()
@HiveType(typeId: 104)
class _$GamePlatformEntity implements GamePlatformEntity {
  const _$GamePlatformEntity(
      {@HiveField(0) @JsonKey(name: 'class', required: true) this.className,
      @required @HiveField(1) this.ch,
      @required @HiveField(2) this.site,
      @HiveField(3) @JsonKey(name: 'type', required: true) this.category})
      : assert(ch != null),
        assert(site != null);

  factory _$GamePlatformEntity.fromJson(Map<String, dynamic> json) =>
      _$_$GamePlatformEntityFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'class', required: true)
  final String className;
  @override
  @HiveField(1)
  final String ch;
  @override
  @HiveField(2)
  final String site;
  @override
  @HiveField(3)
  @JsonKey(name: 'type', required: true)
  final String category;

  @override
  String toString() {
    return 'GamePlatformFreezed.entity(className: $className, ch: $ch, site: $site, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GamePlatformEntity &&
            (identical(other.className, className) ||
                const DeepCollectionEquality()
                    .equals(other.className, className)) &&
            (identical(other.ch, ch) ||
                const DeepCollectionEquality().equals(other.ch, ch)) &&
            (identical(other.site, site) ||
                const DeepCollectionEquality().equals(other.site, site)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(className) ^
      const DeepCollectionEquality().hash(ch) ^
      const DeepCollectionEquality().hash(site) ^
      const DeepCollectionEquality().hash(category);

  @override
  $GamePlatformEntityCopyWith<GamePlatformEntity> get copyWith =>
      _$GamePlatformEntityCopyWithImpl<GamePlatformEntity>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result entity(
            @HiveField(0)
            @JsonKey(name: 'class', required: true)
                String className,
            @required
            @HiveField(1)
                String ch,
            @required
            @HiveField(2)
                String site,
            @HiveField(3)
            @JsonKey(name: 'type', required: true)
                String category),
    @required
        Result model(
            @JsonKey(name: 'class', required: true) String className,
            @required String ch,
            @required int cid,
            @required String site,
            @required String site2,
            @JsonKey(name: 'type', required: true) String category,
            @required int sort,
            @required String status),
  }) {
    assert(entity != null);
    assert(model != null);
    return entity(className, ch, site, category);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result entity(
        @HiveField(0) @JsonKey(name: 'class', required: true) String className,
        @required @HiveField(1) String ch,
        @required @HiveField(2) String site,
        @HiveField(3) @JsonKey(name: 'type', required: true) String category),
    Result model(
        @JsonKey(name: 'class', required: true) String className,
        @required String ch,
        @required int cid,
        @required String site,
        @required String site2,
        @JsonKey(name: 'type', required: true) String category,
        @required int sort,
        @required String status),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (entity != null) {
      return entity(className, ch, site, category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result entity(GamePlatformEntity value),
    @required Result model(GamePlatformModel value),
  }) {
    assert(entity != null);
    assert(model != null);
    return entity(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result entity(GamePlatformEntity value),
    Result model(GamePlatformModel value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (entity != null) {
      return entity(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$GamePlatformEntityToJson(this)..['runtimeType'] = 'entity';
  }

  @override
  String operator [](String key) {
    return className.toString();
  }
}

abstract class GamePlatformEntity implements GamePlatformFreezed {
  const factory GamePlatformEntity(
      {@HiveField(0)
      @JsonKey(name: 'class', required: true)
          String className,
      @required
      @HiveField(1)
          String ch,
      @required
      @HiveField(2)
          String site,
      @HiveField(3)
      @JsonKey(name: 'type', required: true)
          String category}) = _$GamePlatformEntity;

  factory GamePlatformEntity.fromJson(Map<String, dynamic> json) =
      _$GamePlatformEntity.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'class', required: true)
  String get className;
  @override
  @HiveField(1)
  String get ch;
  @override
  @HiveField(2)
  String get site;
  @override
  @HiveField(3)
  @JsonKey(name: 'type', required: true)
  String get category;
  @override
  $GamePlatformEntityCopyWith<GamePlatformEntity> get copyWith;
}

abstract class $GamePlatformModelCopyWith<$Res>
    implements $GamePlatformFreezedCopyWith<$Res> {
  factory $GamePlatformModelCopyWith(
          GamePlatformModel value, $Res Function(GamePlatformModel) then) =
      _$GamePlatformModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'class', required: true) String className,
      String ch,
      int cid,
      String site,
      String site2,
      @JsonKey(name: 'type', required: true) String category,
      int sort,
      String status});
}

class _$GamePlatformModelCopyWithImpl<$Res>
    extends _$GamePlatformFreezedCopyWithImpl<$Res>
    implements $GamePlatformModelCopyWith<$Res> {
  _$GamePlatformModelCopyWithImpl(
      GamePlatformModel _value, $Res Function(GamePlatformModel) _then)
      : super(_value, (v) => _then(v as GamePlatformModel));

  @override
  GamePlatformModel get _value => super._value as GamePlatformModel;

  @override
  $Res call({
    Object className = freezed,
    Object ch = freezed,
    Object cid = freezed,
    Object site = freezed,
    Object site2 = freezed,
    Object category = freezed,
    Object sort = freezed,
    Object status = freezed,
  }) {
    return _then(GamePlatformModel(
      className: className == freezed ? _value.className : className as String,
      ch: ch == freezed ? _value.ch : ch as String,
      cid: cid == freezed ? _value.cid : cid as int,
      site: site == freezed ? _value.site : site as String,
      site2: site2 == freezed ? _value.site2 : site2 as String,
      category: category == freezed ? _value.category : category as String,
      sort: sort == freezed ? _value.sort : sort as int,
      status: status == freezed ? _value.status : status as String,
    ));
  }
}

@JsonSerializable()
class _$GamePlatformModel implements GamePlatformModel {
  const _$GamePlatformModel(
      {@JsonKey(name: 'class', required: true) this.className,
      @required this.ch,
      @required this.cid,
      @required this.site,
      @required this.site2,
      @JsonKey(name: 'type', required: true) this.category,
      @required this.sort,
      @required this.status})
      : assert(ch != null),
        assert(cid != null),
        assert(site != null),
        assert(site2 != null),
        assert(sort != null),
        assert(status != null);

  factory _$GamePlatformModel.fromJson(Map<String, dynamic> json) =>
      _$_$GamePlatformModelFromJson(json);

  @override
  @JsonKey(name: 'class', required: true)
  final String className;
  @override
  final String ch;
  @override
  final int cid;
  @override
  final String site;
  @override
  final String site2;
  @override
  @JsonKey(name: 'type', required: true)
  final String category;
  @override
  final int sort;
  @override
  final String status;

  @override
  String toString() {
    return 'GamePlatformFreezed.model(className: $className, ch: $ch, cid: $cid, site: $site, site2: $site2, category: $category, sort: $sort, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GamePlatformModel &&
            (identical(other.className, className) ||
                const DeepCollectionEquality()
                    .equals(other.className, className)) &&
            (identical(other.ch, ch) ||
                const DeepCollectionEquality().equals(other.ch, ch)) &&
            (identical(other.cid, cid) ||
                const DeepCollectionEquality().equals(other.cid, cid)) &&
            (identical(other.site, site) ||
                const DeepCollectionEquality().equals(other.site, site)) &&
            (identical(other.site2, site2) ||
                const DeepCollectionEquality().equals(other.site2, site2)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.sort, sort) ||
                const DeepCollectionEquality().equals(other.sort, sort)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(className) ^
      const DeepCollectionEquality().hash(ch) ^
      const DeepCollectionEquality().hash(cid) ^
      const DeepCollectionEquality().hash(site) ^
      const DeepCollectionEquality().hash(site2) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(sort) ^
      const DeepCollectionEquality().hash(status);

  @override
  $GamePlatformModelCopyWith<GamePlatformModel> get copyWith =>
      _$GamePlatformModelCopyWithImpl<GamePlatformModel>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result entity(
            @HiveField(0)
            @JsonKey(name: 'class', required: true)
                String className,
            @required
            @HiveField(1)
                String ch,
            @required
            @HiveField(2)
                String site,
            @HiveField(3)
            @JsonKey(name: 'type', required: true)
                String category),
    @required
        Result model(
            @JsonKey(name: 'class', required: true) String className,
            @required String ch,
            @required int cid,
            @required String site,
            @required String site2,
            @JsonKey(name: 'type', required: true) String category,
            @required int sort,
            @required String status),
  }) {
    assert(entity != null);
    assert(model != null);
    return model(className, ch, cid, site, site2, category, sort, status);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result entity(
        @HiveField(0) @JsonKey(name: 'class', required: true) String className,
        @required @HiveField(1) String ch,
        @required @HiveField(2) String site,
        @HiveField(3) @JsonKey(name: 'type', required: true) String category),
    Result model(
        @JsonKey(name: 'class', required: true) String className,
        @required String ch,
        @required int cid,
        @required String site,
        @required String site2,
        @JsonKey(name: 'type', required: true) String category,
        @required int sort,
        @required String status),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (model != null) {
      return model(className, ch, cid, site, site2, category, sort, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result entity(GamePlatformEntity value),
    @required Result model(GamePlatformModel value),
  }) {
    assert(entity != null);
    assert(model != null);
    return model(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result entity(GamePlatformEntity value),
    Result model(GamePlatformModel value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (model != null) {
      return model(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$GamePlatformModelToJson(this)..['runtimeType'] = 'model';
  }

  @override
  String operator [](String key) {
    return className.toString();
  }
}

abstract class GamePlatformModel implements GamePlatformFreezed {
  const factory GamePlatformModel(
      {@JsonKey(name: 'class', required: true) String className,
      @required String ch,
      @required int cid,
      @required String site,
      @required String site2,
      @JsonKey(name: 'type', required: true) String category,
      @required int sort,
      @required String status}) = _$GamePlatformModel;

  factory GamePlatformModel.fromJson(Map<String, dynamic> json) =
      _$GamePlatformModel.fromJson;

  @override
  @JsonKey(name: 'class', required: true)
  String get className;
  @override
  String get ch;
  int get cid;
  @override
  String get site;
  String get site2;
  @override
  @JsonKey(name: 'type', required: true)
  String get category;
  int get sort;
  String get status;
  @override
  $GamePlatformModelCopyWith<GamePlatformModel> get copyWith;
}
