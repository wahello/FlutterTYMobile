import 'package:super_enum/super_enum.dart';

part 'home_game_state.g.dart';

@superEnum
enum _HomeGameState {
  @object
  GInitial,
  @object
  GLoading,
  @Data(fields: [
    DataField<List>('tabsData'),
  ])
  GLoaded,
  @Data(fields: [
    DataField<String>('message'),
  ])
  GError,
}
