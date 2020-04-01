import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'login_form.freezed.dart';
part 'login_form.g.dart';

@freezed
abstract class UserLoginForm with _$UserLoginForm {
  const factory UserLoginForm({
    @JsonKey(name: 'accountcode') String account,
    String password,
  }) = _UserLoginForm;

  factory UserLoginForm.fromJson(Map<String, dynamic> json) =>
      _$UserLoginFormFromJson(json);
}

@freezed
abstract class UserLoginHiveForm with _$UserLoginHiveForm {
  @HiveType(typeId: 109)
  const factory UserLoginHiveForm({
    @HiveField(0) String account,
    @HiveField(1) String password,
    @HiveField(2) @Default(false) bool fastLogin,
  }) = _UserLoginHiveForm;
}

extension UserLoginHiveFormExtension on UserLoginHiveForm {
  UserLoginForm get simple => UserLoginForm(
        account: this.account,
        password: this.password,
      );
}
