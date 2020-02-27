import 'dart:io';
import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ty_mobile/core/base/usecase.dart';
import 'package:flutter_ty_mobile/features/home/data/models/game_category_model.dart';
import 'package:flutter_ty_mobile/features/home/domain/entity/game_platform_entity.dart';
import 'package:flutter_ty_mobile/features/home/domain/entity/game_types_entity.dart';
import 'package:flutter_ty_mobile/features/home/domain/repository/home_repository.dart';
import 'package:flutter_ty_mobile/features/home/domain/usecase/get_game_types.dart';
import 'package:hive/src/hive_impl.dart';
import 'package:mockito/mockito.dart';
import 'package:path/path.dart' as path;

class MockHomeRepository extends Mock implements HomeRepository {}

void main() {
  GetGameTypesData usecase;
  MockHomeRepository mockHomeRepository;

  setUp(() {
    mockHomeRepository = MockHomeRepository();
    usecase = GetGameTypesData(mockHomeRepository);
  });

  final GameCategoryModel categoryModel =
      GameCategoryModel(type: "casino", ch: "真人");

  final GamePlatformEntity platformEntity = GamePlatformEntity(
    site: "eg",
    ch: "EG casino",
    category: "casino",
    className: "eg-casino",
  );

  final GameTypesEntity typesEntity = GameTypesEntity(
    categories: [categoryModel],
    platforms: [platformEntity],
  );

  test(
    'should get types list from the repository',
    () async {
      // "On the fly" implementation of the Repository using the Mockito package.
      // When getBanners is called with any argument, always answer with
      // the Right "side" of Either containing a test list of BannerEntity object.
      when(mockHomeRepository.getGameTypes())
          .thenAnswer((_) async => Right(typesEntity));
      // The "act" phase of the test. Call the not-yet-existent method.
      final result = await usecase(NoParams());
      final item = result.getOrElse(null);
      print("test result: ${item.toString()}");
      // UseCase should simply return whatever was returned from the Repository
      expect(item, typesEntity);
      // Verify that the method has been called on the Repository
      verify(mockHomeRepository.getGameTypes());
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

      final box1 = await hive.openBox('test1');
      expect(hive.isBoxOpen('test1'), true);
      final box2 = await hive.openBox('test2');
      expect(hive.isBoxOpen('test2'), true);

      hive.registerAdapter(GameCategoryModelAdapter());
      hive.registerAdapter(GamePlatformEntityAdapter());
//      expect(hive.findAdapterForTypeId(4), isA<BannerEntityAdapter>());
//      expect(hive.findAdapterForValue(BannerEntity).adapter,
//          isA<BannerEntityAdapter>());

      box1.add(categoryModel);
      var data1 = box1.getAt(0) as GameCategoryModel;
      print('key: ${box1.keyAt(0)}, data: $data1');
      expect(data1 == categoryModel, true);

      box2.add(platformEntity);
      var data2 = box2.getAt(0) as GamePlatformEntity;
      print('key: ${box2.keyAt(0)}, data: $data2');
      expect(data2 == platformEntity, true);

      var data = GameTypesEntity(categories: [data1], platforms: [data2]);
      expect(data, typesEntity);
    });
  });
}
