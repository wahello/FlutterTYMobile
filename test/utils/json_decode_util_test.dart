import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ty_mobile/utils/json_decode_util.dart';

final String jsonListString =
    '[{"id": 4107, "category": "slot","platform": "eg"},{"id": 4108,"category": "slot","platform": "eg"}]';

void main() {
  test('test json trim decode', () {
    print(JsonDecodeUtil.trimJson(jsonListString));
  });

  test('test json array decode to list', () {
    var list = JsonDecodeUtil.decodeArray(jsonListString);
    print(list);
    expect(list, isA<List>());
  });
}
