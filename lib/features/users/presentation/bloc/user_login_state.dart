import 'package:flutter_ty_mobile/features/users/data/models/user_freezed.dart'
    show UserEntity;
import 'package:super_enum/super_enum.dart';

part 'user_login_state.g.dart';

@superEnum
enum _UserLoginState {
  @object
  UInitial,
  @object
  ULoading,
  @Data(fields: [
    DataField<UserEntity>('user'),
  ])
  ULoaded,
  @Data(fields: [
    DataField<String>('message'),
  ])
  UError,
}
