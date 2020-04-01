import 'package:freezed_annotation/freezed_annotation.dart';

part 'platform_game_form.freezed.dart';
part 'platform_game_form.g.dart';

@freezed
abstract class PlatformGameForm with _$PlatformGameForm {
  const factory PlatformGameForm({
    @required String category,
    @required String platform,
  }) = _PlatformGameForm;

  factory PlatformGameForm.fromJson(Map<String, dynamic> json) =>
      _$PlatformGameFormFromJson(json);

  static PlatformGameForm jsonToPlatformGameForm(
          Map<String, dynamic> jsonMap) =>
      PlatformGameForm.fromJson(jsonMap);
}
