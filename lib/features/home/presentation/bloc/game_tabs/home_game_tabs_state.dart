import 'package:flutter_ty_mobile/features/home/domain/entity/game_types_entity.dart';
import 'package:super_enum/super_enum.dart';

part 'home_game_tabs_state.g.dart';

@superEnum
enum _HomeGameTabsState {
  @object
  TInitial,
  @object
  TLoading,
  @Data(fields: [
    DataField<GameTypesEntity>('types'),
  ])
  TLoaded,
  @Data(fields: [
    DataField<String>('message'),
  ])
  TError,
}
