// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'banner_freezed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BannerModel _$BannerModelFromJson(Map<String, dynamic> json) {
  return _BannerModel.fromJson(json);
}

class _$BannerModelTearOff {
  const _$BannerModelTearOff();

  _BannerModel call(
      {@required int id,
      @required String title,
      @required String type,
      @required String pic,
      @JsonKey(name: 'pic_mobile', required: true) String picMobile,
      @required bool status,
      @JsonKey(name: 'start_time', required: true) String startTime,
      @JsonKey(name: 'end_time', required: true) String endTime,
      @required int sort,
      @JsonKey(name: 'url_blank', required: true) bool urlBlank,
      @required String url,
      @JsonKey(name: 'mobile_url', required: true) String mobileUrl}) {
    return _BannerModel(
      id: id,
      title: title,
      type: type,
      pic: pic,
      picMobile: picMobile,
      status: status,
      startTime: startTime,
      endTime: endTime,
      sort: sort,
      urlBlank: urlBlank,
      url: url,
      mobileUrl: mobileUrl,
    );
  }
}

// ignore: unused_element
const $BannerModel = _$BannerModelTearOff();

mixin _$BannerModel {
  int get id;
  String get title;
  String get type;
  String get pic;
  @JsonKey(name: 'pic_mobile', required: true)
  String get picMobile;
  bool get status;
  @JsonKey(name: 'start_time', required: true)
  String get startTime;
  @JsonKey(name: 'end_time', required: true)
  String get endTime;
  int get sort;
  @JsonKey(name: 'url_blank', required: true)
  bool get urlBlank;
  String get url;
  @JsonKey(name: 'mobile_url', required: true)
  String get mobileUrl;

  Map<String, dynamic> toJson();
  $BannerModelCopyWith<BannerModel> get copyWith;
}

abstract class $BannerModelCopyWith<$Res> {
  factory $BannerModelCopyWith(
          BannerModel value, $Res Function(BannerModel) then) =
      _$BannerModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String type,
      String pic,
      @JsonKey(name: 'pic_mobile', required: true) String picMobile,
      bool status,
      @JsonKey(name: 'start_time', required: true) String startTime,
      @JsonKey(name: 'end_time', required: true) String endTime,
      int sort,
      @JsonKey(name: 'url_blank', required: true) bool urlBlank,
      String url,
      @JsonKey(name: 'mobile_url', required: true) String mobileUrl});
}

class _$BannerModelCopyWithImpl<$Res> implements $BannerModelCopyWith<$Res> {
  _$BannerModelCopyWithImpl(this._value, this._then);

  final BannerModel _value;
  // ignore: unused_field
  final $Res Function(BannerModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object type = freezed,
    Object pic = freezed,
    Object picMobile = freezed,
    Object status = freezed,
    Object startTime = freezed,
    Object endTime = freezed,
    Object sort = freezed,
    Object urlBlank = freezed,
    Object url = freezed,
    Object mobileUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      type: type == freezed ? _value.type : type as String,
      pic: pic == freezed ? _value.pic : pic as String,
      picMobile: picMobile == freezed ? _value.picMobile : picMobile as String,
      status: status == freezed ? _value.status : status as bool,
      startTime: startTime == freezed ? _value.startTime : startTime as String,
      endTime: endTime == freezed ? _value.endTime : endTime as String,
      sort: sort == freezed ? _value.sort : sort as int,
      urlBlank: urlBlank == freezed ? _value.urlBlank : urlBlank as bool,
      url: url == freezed ? _value.url : url as String,
      mobileUrl: mobileUrl == freezed ? _value.mobileUrl : mobileUrl as String,
    ));
  }
}

abstract class _$BannerModelCopyWith<$Res>
    implements $BannerModelCopyWith<$Res> {
  factory _$BannerModelCopyWith(
          _BannerModel value, $Res Function(_BannerModel) then) =
      __$BannerModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String type,
      String pic,
      @JsonKey(name: 'pic_mobile', required: true) String picMobile,
      bool status,
      @JsonKey(name: 'start_time', required: true) String startTime,
      @JsonKey(name: 'end_time', required: true) String endTime,
      int sort,
      @JsonKey(name: 'url_blank', required: true) bool urlBlank,
      String url,
      @JsonKey(name: 'mobile_url', required: true) String mobileUrl});
}

class __$BannerModelCopyWithImpl<$Res> extends _$BannerModelCopyWithImpl<$Res>
    implements _$BannerModelCopyWith<$Res> {
  __$BannerModelCopyWithImpl(
      _BannerModel _value, $Res Function(_BannerModel) _then)
      : super(_value, (v) => _then(v as _BannerModel));

  @override
  _BannerModel get _value => super._value as _BannerModel;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object type = freezed,
    Object pic = freezed,
    Object picMobile = freezed,
    Object status = freezed,
    Object startTime = freezed,
    Object endTime = freezed,
    Object sort = freezed,
    Object urlBlank = freezed,
    Object url = freezed,
    Object mobileUrl = freezed,
  }) {
    return _then(_BannerModel(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      type: type == freezed ? _value.type : type as String,
      pic: pic == freezed ? _value.pic : pic as String,
      picMobile: picMobile == freezed ? _value.picMobile : picMobile as String,
      status: status == freezed ? _value.status : status as bool,
      startTime: startTime == freezed ? _value.startTime : startTime as String,
      endTime: endTime == freezed ? _value.endTime : endTime as String,
      sort: sort == freezed ? _value.sort : sort as int,
      urlBlank: urlBlank == freezed ? _value.urlBlank : urlBlank as bool,
      url: url == freezed ? _value.url : url as String,
      mobileUrl: mobileUrl == freezed ? _value.mobileUrl : mobileUrl as String,
    ));
  }
}

@JsonSerializable()
class _$_BannerModel implements _BannerModel {
  const _$_BannerModel(
      {@required this.id,
      @required this.title,
      @required this.type,
      @required this.pic,
      @JsonKey(name: 'pic_mobile', required: true) this.picMobile,
      @required this.status,
      @JsonKey(name: 'start_time', required: true) this.startTime,
      @JsonKey(name: 'end_time', required: true) this.endTime,
      @required this.sort,
      @JsonKey(name: 'url_blank', required: true) this.urlBlank,
      @required this.url,
      @JsonKey(name: 'mobile_url', required: true) this.mobileUrl})
      : assert(id != null),
        assert(title != null),
        assert(type != null),
        assert(pic != null),
        assert(status != null),
        assert(sort != null),
        assert(url != null);

  factory _$_BannerModel.fromJson(Map<String, dynamic> json) =>
      _$_$_BannerModelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String type;
  @override
  final String pic;
  @override
  @JsonKey(name: 'pic_mobile', required: true)
  final String picMobile;
  @override
  final bool status;
  @override
  @JsonKey(name: 'start_time', required: true)
  final String startTime;
  @override
  @JsonKey(name: 'end_time', required: true)
  final String endTime;
  @override
  final int sort;
  @override
  @JsonKey(name: 'url_blank', required: true)
  final bool urlBlank;
  @override
  final String url;
  @override
  @JsonKey(name: 'mobile_url', required: true)
  final String mobileUrl;

  @override
  String toString() {
    return 'BannerModel(id: $id, title: $title, type: $type, pic: $pic, picMobile: $picMobile, status: $status, startTime: $startTime, endTime: $endTime, sort: $sort, urlBlank: $urlBlank, url: $url, mobileUrl: $mobileUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BannerModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.pic, pic) ||
                const DeepCollectionEquality().equals(other.pic, pic)) &&
            (identical(other.picMobile, picMobile) ||
                const DeepCollectionEquality()
                    .equals(other.picMobile, picMobile)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.startTime, startTime) ||
                const DeepCollectionEquality()
                    .equals(other.startTime, startTime)) &&
            (identical(other.endTime, endTime) ||
                const DeepCollectionEquality()
                    .equals(other.endTime, endTime)) &&
            (identical(other.sort, sort) ||
                const DeepCollectionEquality().equals(other.sort, sort)) &&
            (identical(other.urlBlank, urlBlank) ||
                const DeepCollectionEquality()
                    .equals(other.urlBlank, urlBlank)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.mobileUrl, mobileUrl) ||
                const DeepCollectionEquality()
                    .equals(other.mobileUrl, mobileUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(pic) ^
      const DeepCollectionEquality().hash(picMobile) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(startTime) ^
      const DeepCollectionEquality().hash(endTime) ^
      const DeepCollectionEquality().hash(sort) ^
      const DeepCollectionEquality().hash(urlBlank) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(mobileUrl);

  @override
  _$BannerModelCopyWith<_BannerModel> get copyWith =>
      __$BannerModelCopyWithImpl<_BannerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BannerModelToJson(this);
  }
}

abstract class _BannerModel implements BannerModel {
  const factory _BannerModel(
          {@required int id,
          @required String title,
          @required String type,
          @required String pic,
          @JsonKey(name: 'pic_mobile', required: true) String picMobile,
          @required bool status,
          @JsonKey(name: 'start_time', required: true) String startTime,
          @JsonKey(name: 'end_time', required: true) String endTime,
          @required int sort,
          @JsonKey(name: 'url_blank', required: true) bool urlBlank,
          @required String url,
          @JsonKey(name: 'mobile_url', required: true) String mobileUrl}) =
      _$_BannerModel;

  factory _BannerModel.fromJson(Map<String, dynamic> json) =
      _$_BannerModel.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get type;
  @override
  String get pic;
  @override
  @JsonKey(name: 'pic_mobile', required: true)
  String get picMobile;
  @override
  bool get status;
  @override
  @JsonKey(name: 'start_time', required: true)
  String get startTime;
  @override
  @JsonKey(name: 'end_time', required: true)
  String get endTime;
  @override
  int get sort;
  @override
  @JsonKey(name: 'url_blank', required: true)
  bool get urlBlank;
  @override
  String get url;
  @override
  @JsonKey(name: 'mobile_url', required: true)
  String get mobileUrl;
  @override
  _$BannerModelCopyWith<_BannerModel> get copyWith;
}

class _$BannerEntityTearOff {
  const _$BannerEntityTearOff();

  _BannerEntity call(
      {@required @HiveField(0) int id,
      @required @HiveField(1) String pic,
      @required @HiveField(2) bool noPromo,
      @required @HiveField(3) String promoUrl,
      @required @HiveField(4) int sort}) {
    return _BannerEntity(
      id: id,
      pic: pic,
      noPromo: noPromo,
      promoUrl: promoUrl,
      sort: sort,
    );
  }
}

// ignore: unused_element
const $BannerEntity = _$BannerEntityTearOff();

mixin _$BannerEntity {
  @HiveField(0)
  int get id;
  @HiveField(1)
  String get pic;
  @HiveField(2)
  bool get noPromo;
  @HiveField(3)
  String get promoUrl;
  @HiveField(4)
  int get sort;

  $BannerEntityCopyWith<BannerEntity> get copyWith;
}

abstract class $BannerEntityCopyWith<$Res> {
  factory $BannerEntityCopyWith(
          BannerEntity value, $Res Function(BannerEntity) then) =
      _$BannerEntityCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String pic,
      @HiveField(2) bool noPromo,
      @HiveField(3) String promoUrl,
      @HiveField(4) int sort});
}

class _$BannerEntityCopyWithImpl<$Res> implements $BannerEntityCopyWith<$Res> {
  _$BannerEntityCopyWithImpl(this._value, this._then);

  final BannerEntity _value;
  // ignore: unused_field
  final $Res Function(BannerEntity) _then;

  @override
  $Res call({
    Object id = freezed,
    Object pic = freezed,
    Object noPromo = freezed,
    Object promoUrl = freezed,
    Object sort = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      pic: pic == freezed ? _value.pic : pic as String,
      noPromo: noPromo == freezed ? _value.noPromo : noPromo as bool,
      promoUrl: promoUrl == freezed ? _value.promoUrl : promoUrl as String,
      sort: sort == freezed ? _value.sort : sort as int,
    ));
  }
}

abstract class _$BannerEntityCopyWith<$Res>
    implements $BannerEntityCopyWith<$Res> {
  factory _$BannerEntityCopyWith(
          _BannerEntity value, $Res Function(_BannerEntity) then) =
      __$BannerEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String pic,
      @HiveField(2) bool noPromo,
      @HiveField(3) String promoUrl,
      @HiveField(4) int sort});
}

class __$BannerEntityCopyWithImpl<$Res> extends _$BannerEntityCopyWithImpl<$Res>
    implements _$BannerEntityCopyWith<$Res> {
  __$BannerEntityCopyWithImpl(
      _BannerEntity _value, $Res Function(_BannerEntity) _then)
      : super(_value, (v) => _then(v as _BannerEntity));

  @override
  _BannerEntity get _value => super._value as _BannerEntity;

  @override
  $Res call({
    Object id = freezed,
    Object pic = freezed,
    Object noPromo = freezed,
    Object promoUrl = freezed,
    Object sort = freezed,
  }) {
    return _then(_BannerEntity(
      id: id == freezed ? _value.id : id as int,
      pic: pic == freezed ? _value.pic : pic as String,
      noPromo: noPromo == freezed ? _value.noPromo : noPromo as bool,
      promoUrl: promoUrl == freezed ? _value.promoUrl : promoUrl as String,
      sort: sort == freezed ? _value.sort : sort as int,
    ));
  }
}

@HiveType(typeId: 101)
class _$_BannerEntity implements _BannerEntity {
  const _$_BannerEntity(
      {@required @HiveField(0) this.id,
      @required @HiveField(1) this.pic,
      @required @HiveField(2) this.noPromo,
      @required @HiveField(3) this.promoUrl,
      @required @HiveField(4) this.sort})
      : assert(id != null),
        assert(pic != null),
        assert(noPromo != null),
        assert(promoUrl != null),
        assert(sort != null);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String pic;
  @override
  @HiveField(2)
  final bool noPromo;
  @override
  @HiveField(3)
  final String promoUrl;
  @override
  @HiveField(4)
  final int sort;

  @override
  String toString() {
    return 'BannerEntity(id: $id, pic: $pic, noPromo: $noPromo, promoUrl: $promoUrl, sort: $sort)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BannerEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.pic, pic) ||
                const DeepCollectionEquality().equals(other.pic, pic)) &&
            (identical(other.noPromo, noPromo) ||
                const DeepCollectionEquality()
                    .equals(other.noPromo, noPromo)) &&
            (identical(other.promoUrl, promoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.promoUrl, promoUrl)) &&
            (identical(other.sort, sort) ||
                const DeepCollectionEquality().equals(other.sort, sort)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(pic) ^
      const DeepCollectionEquality().hash(noPromo) ^
      const DeepCollectionEquality().hash(promoUrl) ^
      const DeepCollectionEquality().hash(sort);

  @override
  _$BannerEntityCopyWith<_BannerEntity> get copyWith =>
      __$BannerEntityCopyWithImpl<_BannerEntity>(this, _$identity);

  @override
  String operator [](String key) {
    return id.toString();
  }
}

abstract class _BannerEntity implements BannerEntity {
  const factory _BannerEntity(
      {@required @HiveField(0) int id,
      @required @HiveField(1) String pic,
      @required @HiveField(2) bool noPromo,
      @required @HiveField(3) String promoUrl,
      @required @HiveField(4) int sort}) = _$_BannerEntity;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String get pic;
  @override
  @HiveField(2)
  bool get noPromo;
  @override
  @HiveField(3)
  String get promoUrl;
  @override
  @HiveField(4)
  int get sort;
  @override
  _$BannerEntityCopyWith<_BannerEntity> get copyWith;
}
