import 'package:super_enum/super_enum.dart';

part 'template2_event.g.dart';

@superEnum
enum _Template2Event {
  @object
  GetDescEvent,
  @Data(fields: [
    DataField<String>('data'),
  ])
  GetDescEvent2,
}
