import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ty_mobile/features/home/data/models/banner_freezed.dart'
    show BannerModel;
import 'package:flutter_ty_mobile/utils/json_decode_util.dart';

import '../../../../fixtures/fixture_reader.dart';

final BannerModel bannerModel = BannerModel(
    id: 1,
    type: "image/jpeg",
    title: "23456781",
    url: "456456",
    urlBlank: true,
    mobileUrl: "456456456",
    pic: "images/banner/pc/292.jpg",
    picMobile: "images/banner/mobile/291.jpg",
    startTime: "2019-07-17 00:00:00",
    endTime: "2029-07-11 09:39:00",
    status: true,
    sort: 8);

void main() {
  test('test model data decode', () {
    final map = json.decode(fixture('home/banner.json'));
    final model = BannerModel.fromJson(map);
    expect(model.id, 1);
  });

  test('test model data to json', () {
    final map = json.decode(fixture('home/banner.json'));
    final jsonMap = bannerModel.toJson();
    expect(map, jsonMap);
  });

  test(
    'should transfer json data into model data',
    () async {
      final map = json.decode(fixture('home/banner.json'));
      final model = BannerModel.fromJson(map);
      expect(model, isA<BannerModel>());
      print("test model: ${model.toString()}");
    },
  );

  test('test model list data decode', () {
    List<dynamic> list =
        JsonDecodeUtil.decodeArray(fixture('home/banner_array.json'));
    final dataList =
        list.map((model) => BannerModel.jsonToBannerModel(model)).toList();
    expect(dataList.length, 3);
    expect(dataList.first, bannerModel);
  });
}
