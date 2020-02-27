import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart' show required;
import 'package:to_string/to_string.dart';

part 'user_entity.g.dart';

@ToString()
class UserEntity extends Equatable {
  final String account;
  final String credit;
  final int vip;
  final String vipName;

  UserEntity(
      {@required this.account,
      @required this.credit,
      @required this.vip,
      @required this.vipName});

  @override
  List<Object> get props => [account, credit, vip, vipName];

  @override
  String toString() => _$UserEntityToString(this);
}
