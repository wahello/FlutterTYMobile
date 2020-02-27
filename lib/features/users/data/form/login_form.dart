import 'package:to_string/to_string.dart';

part 'login_form.g.dart';

@ToString()
class UserLoginForm {
  String account;
  String password;

  UserLoginForm({this.account, this.password});

  factory UserLoginForm.fromJson(Map<String, dynamic> json) {
    return UserLoginForm(
      account: json['accountcode'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['accountcode'] = this.account;
    data['password'] = this.password;
    return data;
  }

  @override
  String toString() => _$UserLoginFormToString(this);
}
