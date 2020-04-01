import 'package:flutter_ty_mobile/features/home/domain/entity/platform_game_form.dart';
import 'package:super_enum/super_enum.dart';

part 'home_game_event.g.dart';

@superEnum
enum _HomeGameEvent {
  @Data(fields: [
    DataField<PlatformGameForm>('form'),
  ])
  GetGamesEvent,
}
