import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ty_mobile/core/internal/global.dart';
import 'package:flutter_ty_mobile/utils/regex_util.dart';

void main() {
  String tyRoute7Url = 'https://www.vip66725.com/';
  String tyRoute6Url = 'https://www.vip66656.com/';
  String tyRoute4Url = 'https://www.vip66432.com/';

  test('test router regex', () {
    expect('${Global.TEST_BASE_URL}'.isRouteUrl, true);
    expect('${Global.TY_BASE_URL}'.testTyRouteUrl, true);
    expect(tyRoute7Url.testTyRouteUrl, true);
    expect(tyRoute6Url.testTyRouteUrl, true);
    expect(tyRoute4Url.testTyRouteUrl, false);
  });

  String openGameUrl = 'https://eg990.com/api/open/eg/casino/0';
  String openGameUrl2 = 'https://eg990.com/api/openUrl/eg/slot/candy';

  test('test game regex', () {
    expect(openGameUrl.isRouteUrl, true);
    expect(openGameUrl.isGameUrl, true);
    expect(openGameUrl2.isGameAutoUrl, true);
  });

  String imageUrl = 'https://eg990.com/images/nav.png';
  String imageUrl2 = 'https://eg990.com/images/nav';
  String imageUrl3 = 'https://eg990.com/image/nav.png';

  test('test regex', () {
    expect(imageUrl.isImageUrl, true);
    expect(imageUrl2.isImageUrl, false);
    expect(imageUrl3.isImageUrl, false);
  });
}
