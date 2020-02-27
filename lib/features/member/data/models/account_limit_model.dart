import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart' show required;
import 'package:to_string/to_string.dart';

part 'account_limit_model.g.dart';

@ToString()
class AccountLimitModel extends Equatable {
  final String account;
  final String credit;

  AccountLimitModel({@required this.account, @required this.credit});

  factory AccountLimitModel.fromJson(Map<String, dynamic> json) {
    return AccountLimitModel(
      account: json['accountcode'],
      credit: json['unlimit'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['accountcode'] = this.account;
    data['unlimit'] = this.credit;
    return data;
  }

  @override
  List<Object> get props => [account, credit];

  @override
  String toString() => _$AccountLimitModelToString(this);

  static AccountLimitModel jsonToCreditModel(Map<String, dynamic> jsonMap) =>
      AccountLimitModel.fromJson(jsonMap);
}
