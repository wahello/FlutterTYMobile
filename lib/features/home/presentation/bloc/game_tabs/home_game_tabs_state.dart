import 'package:flutter_ty_mobile/features/home/data/models/game_types_freezed.dart';
import 'package:super_enum/super_enum.dart';

part 'home_game_tabs_state.g.dart';

@superEnum
enum _HomeGameTabsState {
  @object
  TInitial,
  @object
  TLoading,
  @Data(fields: [
    DataField<GameTypes>('types'),
  ])
  TLoaded,
  @Data(fields: [
    DataField<String>('message'),
  ])
  TError,
}
