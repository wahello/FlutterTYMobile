import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ty_mobile/features/home/domain/entity/platform_game_form.dart';

final String jsonString = '{"category":"casino","platform":"eg"}';

final PlatformGameForm form = PlatformGameForm(
  category: 'casino',
  platform: 'eg',
);

void main() {
  test('test json decode', () {
    final testForm = PlatformGameForm.fromJson(json.decode(jsonString));
    expect(testForm, form);
  });

  test('test json encode', () {
    final testJson = form.toJson().toString();
    final testJson2 = json.encode(form);
    final testJson3 = json.encode(form.toJson());
    print(testJson);
    print(testJson2);
    print(testJson3);
//    expect(testJson, jsonString);
    expect(testJson2, jsonString);
    expect(testJson3, jsonString);
  });
}
