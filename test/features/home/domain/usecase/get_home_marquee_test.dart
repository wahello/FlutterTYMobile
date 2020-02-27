import 'dart:io';
import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ty_mobile/core/base/usecase.dart';
import 'package:flutter_ty_mobile/features/home/domain/entity/marquee_entity.dart';
import 'package:flutter_ty_mobile/features/home/domain/repository/home_repository.dart';
import 'package:flutter_ty_mobile/features/home/domain/usecase/get_marquee.dart';
import 'package:hive/src/hive_impl.dart';
import 'package:mockito/mockito.dart';
import 'package:path/path.dart' as path;

class MockHomeRepository extends Mock implements HomeRepository {}

void main() {
  GetHomeMarqueeData usecase;
  MockHomeRepository mockHomeRepository;

  setUp(() {
    mockHomeRepository = MockHomeRepository();
    usecase = GetHomeMarqueeData(mockHomeRepository);
  });

  final MarqueeEntity marqueeEntity = MarqueeEntity(
    id: 2,
    content:
        "尊敬的会员，目前快捷支付、微信支付维护中，公司提供银行入款、支付宝支付、在线支付、银联扫码、虚拟货币，请会员多多参考以上充值方式唷～TEST",
    url: "https://www.baidu.com/",
  );

  test(
    'should get marquee list from the repository',
    () async {
      // "On the fly" implementation of the Repository using the Mockito package.
      // When getBanners is called with any argument, always answer with
      // the Right "side" of Either containing a test list of BannerEntity object.
      when(mockHomeRepository.getMarquees())
          .thenAnswer((_) async => Right([marqueeEntity]));
      // The "act" phase of the test. Call the not-yet-existent method.
      final result = await usecase(NoParams());
      final item = result.getOrElse(null);
      print("test result: ${item.toString()}");
      // UseCase should simply return whatever was returned from the Repository
      expect(item, [marqueeEntity]);
      // Verify that the method has been called on the Repository
      verify(mockHomeRepository.getMarquees());
      // Only the above method should be called and nothing more.
      verifyNoMoreInteractions(mockHomeRepository);
    },
  );

  group('HiveImpl', () {
    final Random random = Random();
    String tempPath =
        path.join(Directory.current.path, '.dart_tool', 'test', 'tmp');

    Future<Directory> getTempDir() async {
      final name = random.nextInt(pow(2, 32) as int);
      final dir = Directory(path.join(tempPath, '${name}_tmp'));
      if (await dir.exists()) {
        await dir.delete(recursive: true);
      }
      await dir.create(recursive: true);
      return dir;
    }

    Future<HiveImpl> initHive() async {
      final tempDir = await getTempDir();
      final hive = HiveImpl();
      hive.init(tempDir.path);
      return hive;
    }

    test('write and read the data in Hive.', () async {
      final hive = await initHive();

      final box = await hive.openBox('test');
      expect(hive.isBoxOpen('test'), true);

      hive.registerAdapter(MarqueeEntityAdapter());
//      expect(hive.findAdapterForTypeId(4), isA<BannerEntityAdapter>());
//      expect(hive.findAdapterForValue(BannerEntity).adapter,
//          isA<BannerEntityAdapter>());

      box.add(marqueeEntity);
      var data = box.getAt(0) as MarqueeEntity;
      print('key: ${box.keyAt(0)}, data: $data');
      expect(data == marqueeEntity, true);

      box.put('marquee', marqueeEntity);
      var dataWithKey = box.get('marquee') as MarqueeEntity;
      print('dataWithKey: $dataWithKey');
      expect(box.containsKey('marquee'), true);
      expect(dataWithKey == marqueeEntity, true);
    });
  });
}
