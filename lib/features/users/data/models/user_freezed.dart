import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_freezed.freezed.dart';
part 'user_freezed.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: 'accountcode', required: true) String account,
    @JsonKey(name: 'creditlimit', required: true) String credit,
    @required String status,
    @required int vip,
    @JsonKey(name: 'vip_name', required: false) String vipName,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  static UserModel jsonToUserModel(Map<String, dynamic> jsonMap) =>
      UserModel.fromJson(jsonMap);
}

@freezed
abstract class UserEntity with _$UserEntity {
  const factory UserEntity({
    @required String account,
    @required String credit,
    @required int vip,
  }) = _UserEntity;
}

extension UserModelExtension on UserModel {
  @late
  bool get isValid => status == 'success';

  @late
  UserEntity get entity =>
      UserEntity(account: account, credit: credit, vip: vip);
}

extension UserEntityExtension on UserEntity {
  @late
  UserEntity updateCredit(String credit) => copyWith(credit: credit);
}

@freezed
abstract class LoginStatus with _$LoginStatus {
  const factory LoginStatus({@required bool loggedIn, UserEntity currentUser}) =
      _LoginStatus;
}
