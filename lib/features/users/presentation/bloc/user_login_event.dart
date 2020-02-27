import 'package:flutter_ty_mobile/features/users/data/form/login_form.dart';
import 'package:super_enum/super_enum.dart';

part 'user_login_event.g.dart';

@superEnum
enum _UserLoginEvent {
  @Data(fields: [
    DataField<UserLoginForm>('form'),
  ])
  GetUserEvent,
}
