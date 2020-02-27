import 'package:super_enum/super_enum.dart';

part 'home_marquee_state.g.dart';

@superEnum
enum _HomeMarqueeState {
  @object
  MInitial,
  @object
  MLoading,
  @Data(fields: [
    DataField<List>('marquee'),
  ])
  MLoaded,
  @Data(fields: [
    DataField<String>('message'),
  ])
  MError,
}
