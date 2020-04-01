import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ty_mobile/features/home/data/models/marquee_freezed.dart';

import '../../../../fixtures/fixture_reader.dart';

final MarqueeModel marqueeModel = MarqueeModel(
  id: 2,
  content:
      "尊敬的会员，目前快捷支付、微信支付维护中，公司提供银行入款、支付宝支付、在线支付、银联扫码、虚拟货币，请会员多多参考以上充值方式唷～TEST",
  url: "https://www.baidu.com/",
  createdAt: "2019-04-10",
  updatedAt: "2019-09-24",
  showDate: "0000-00-00",
);

final MarqueeModelList marqueeModelList = MarqueeModelList(
  marquees: [marqueeModel],
  speed: 20,
);

void main() {
  test('test model list data decode', () {
    final map = json.decode(fixture('home/marquee_array.json'));
    final model = MarqueeModelList.fromJson(map);
    expect(model.speed, 20);
  });

  test('test model list data to json', () {
    final map = json.decode(fixture('home/marquee_array_test.json'));
    final model = marqueeModelList.extJson();
    expect(map, model);
  });

  test('test model data decode', () {
    final map = json.decode(fixture('home/marquee.json'));
    final model = MarqueeModel.fromJson(map);
    expect(model.id, 2);
  });

  test('test model data to json', () {
    final map = json.decode(fixture('home/marquee.json'));
    final jsonMap = marqueeModel.toJson();
    expect(map, jsonMap);
  });

  test('test model list item', () {
    final map = json.decode(fixture('home/marquee_array_test.json'));
    final model = MarqueeModelList.fromJson(map);
    final item = model.marquees.first;
    expect(item, marqueeModel);
    expect(item, isA<MarqueeModel>());
  });
}
