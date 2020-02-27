import 'package:equatable/equatable.dart';
import 'package:flutter_ty_mobile/core/base/data_operator.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart' show required;
import 'package:to_string/to_string.dart';

part 'banner_entity.g.dart';

@ToString()
@HiveType(typeId: 101)
class BannerEntity extends Equatable implements DataOperator {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String picMobile;
  @HiveField(2)
  final bool blankUrl;
  @HiveField(3)
  final String promoUrl;
  @HiveField(4)
  final int sort;

  BannerEntity({
    @required this.id,
    @required this.picMobile,
    @required this.blankUrl,
    @required this.promoUrl,
    @required this.sort,
  });

  @override
  List<Object> get props => [id, picMobile, blankUrl, promoUrl, sort];

  @override
  String toString() {
    return _$BannerEntityToString(this);
  }

  @override
  String operator [](String key) {
    switch (key) {
      case 'id':
        return id.toString();
      default:
        return '';
    }
  }
}
