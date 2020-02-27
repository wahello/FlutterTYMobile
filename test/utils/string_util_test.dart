import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ty_mobile/core/internal/global.dart';
import 'package:flutter_ty_mobile/utils/string_util.dart';

void main() {
  test('test value int', () {
    expect('100'.valueToInt == 100, true);
    expect('100.00'.valueToInt == 100, true);
    expect('￥100'.valueToInt == 100, true);
    expect('100.50'.valueToInt == 100, true);
  });

  test('test value equal', () {
    expect('100.00'.valueIsEqual('100'), true);
    expect('100.50'.valueIsEqual('100'), false);
    expect('100.00'.valueIsEqual('￥100'), true);
  });

  test('test value trim', () {
    var value1 = "100";
    var value2 = "100.00";
    var value3 = "100.50";
    print('test1 = ${value1.trimValue()}');
    print('test1-sign = ${value1.trimValue(creditSign: true)}');
    print('test2 = ${value2.trimValue()}');
    print('test2-floorInt = ${value2.trimValue(floorIfInt: true)}');
    print('test3 = ${value3.trimValue()}');
    print('test3-floorInt = ${value3.trimValue(floorIfInt: true)}');
    print('test3-floor = ${value3.trimValue(floorValue: true)}');
  });

  test('test string verify', () {
    expect(Global.TEST_BASE_URL.isUrl, true);
    expect('a1234@'.isEmail, false);
    expect('a1234@yahoo.com'.isEmail, true);
    var html =
        '<!DOCTYPE html> <html style="height:100%"> <head> <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> <title> 404 Not Found</title></head> <body style="color: #444; margin:0;font: normal 14px/20px Arial, Helvetica, sans-serif; height:100%; background-color: #fff;"> <div style="height:auto; min-height:100%; ">     <div style="text-align: center; width:800px; margin-left: -400px; position:absolute; top: 30%; left:50%;"> <h1 style="margin:0; font-size:150px; line-height:150px; font-weight:bold;">404</h1> <h2 style="margin-top:20px;font-size: 30px;">Not Found</h2> <p>The resource requested could not be found on this server!</p></div></div></body></html>';
    expect(html.isHtmlFormat, true);
  });
}
