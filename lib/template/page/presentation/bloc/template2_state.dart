import 'package:super_enum/super_enum.dart';

part 'template2_state.g.dart';

@superEnum
enum _Template2State {
  @object
  Tp2Initial,
  @object
  Tp2Loading,
  @Data(fields: [
    DataField<String>('description'),
  ])
  Tp2Loaded,
  @Data(fields: [
    DataField<String>('message'),
  ])
  Tp2Error,
}
