import 'package:flutter_ty_mobile/features/users/domain/entity/user_entity.dart';

class UserModel extends UserEntity {
  final String status;

  UserModel({account, credit, this.status, vip, vipName})
      : super(
          account: account,
          credit: credit,
          vip: vip,
          vipName: vipName,
        );

  @override
  List<Object> get props => [account, credit, status, vip, vipName];

  UserEntity get parent =>
      UserEntity(account: account, credit: credit, vip: vip, vipName: vipName);

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      account: json['accountcode'],
      credit: json['creditlimit'],
      status: json['status'],
      vip: json['vip'],
      vipName: json['vip_name'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['accountcode'] = this.account;
    data['creditlimit'] = this.credit;
    data['status'] = this.status;
    data['vip'] = this.vip;
    data['vip_name'] = this.vipName;
    return data;
  }

  @override
  String toString() => props.toString();

  static UserModel jsonToUserModel(Map<String, dynamic> jsonMap) =>
      UserModel.fromJson(jsonMap);
}
