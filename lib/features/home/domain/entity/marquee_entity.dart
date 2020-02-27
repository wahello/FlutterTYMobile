import 'package:equatable/equatable.dart';
import 'package:flutter_ty_mobile/core/base/data_operator.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart' show required;
import 'package:to_string/to_string.dart';

part 'marquee_entity.g.dart';

@ToString()
@HiveType(typeId: 102)
class MarqueeEntity extends Equatable implements DataOperator {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String content;
  @HiveField(2)
  final String url;

  MarqueeEntity({
    @required this.id,
    @required this.content,
    @required this.url,
  });

  @override
  List<Object> get props => [id, content, url];

  @override
  String toString() {
    return _$MarqueeEntityToString(this);
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
