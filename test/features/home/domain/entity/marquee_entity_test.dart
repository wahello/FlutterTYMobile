import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ty_mobile/features/home/data/models/marquee_model.dart';
import 'package:flutter_ty_mobile/features/home/data/models/marquee_model_list.dart';
import 'package:flutter_ty_mobile/features/home/domain/entity/marquee_entity.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
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

  final MarqueeEntity marqueeEntity = MarqueeEntity(
    id: 2,
    content:
        "尊敬的会员，目前快捷支付、微信支付维护中，公司提供银行入款、支付宝支付、在线支付、银联扫码、虚拟货币，请会员多多参考以上充值方式唷～TEST",
    url: "https://www.baidu.com/",
  );

  test(
    'should transfer model data into entity data',
    () async {
      final map = json.decode(fixture('home/marquee.json'));
      final model = MarqueeModel.fromJson(map);
      expect(model, isA<MarqueeModel>());

      final entity = MarqueeEntity(
        id: model.id,
        content: model.content,
        url: model.url,
      );
      expect(entity, marqueeEntity);
      print("test entity: ${entity.toString()}");
    },
  );

  test('test json to model', () {
    final map = json.decode(fixture('home/marquee_array_test.json'));
    final model = MarqueeModelList.fromJson(map);
    expect(model.marquees, marqueeModelList.marquees);
  });
}
