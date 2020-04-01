import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter_ty_mobile/features/screen/web_game_screen_store.dart';
import 'package:flutter_ty_mobile/mylogger.dart';
import 'package:get_it/get_it.dart';

import 'core/network/dio_api_service.dart';
import 'core/network/util/network_info.dart';
import 'features/home/home_inject.dart';
import 'features/member/member_inject.dart';
import 'features/promo/promo_inject.dart';
import 'features/router/route_user_streams.dart';
import 'features/subfeatures/deposit/deposit_inject.dart';
import 'features/users/user_inject.dart';
import 'template/template_inject.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton<RouteUserStreams>(() => RouteUserStreams());

  /// Bloc & Store
  sl.registerFactory(
    () => HomeBannerBloc(
      homeBannerData: sl(),
      homeBannerImageInfo: sl(),
    ),
  );
  sl.registerFactory(
    () => HomeMarqueeBloc(homeMarqueeData: sl()),
  );
  sl.registerFactory(
    () => HomeGameTabsBloc(gameTypesData: sl()),
  );
  sl.registerFactory(
    () => HomeGameBloc(gamesData: sl(), gameUrl: sl()),
  );
  sl.registerFactory(
    () => UserLoginBloc(userData: sl()),
  );
  sl.registerFactory(
    () => DepositStore(sl<DepositRepository>()),
  );
  sl.registerFactory(
    () => PromoStore(sl<PromoRepository>()),
  );
  sl.registerFactory(
    () => MemberCreditStore(sl.get<MemberRepository>()),
  );
  sl.registerLazySingleton<WebGameScreenStore>(
    () => WebGameScreenStore(),
  );

  /// Use cases
  sl.registerLazySingleton(() => GetHomeBannerData(sl()));
  sl.registerLazySingleton(() => GetHomeBannerImage());
  sl.registerLazySingleton(() => GetHomeMarqueeData(sl()));
  sl.registerLazySingleton(() => GetGameTypesData(sl()));
  sl.registerLazySingleton(() => GetGamesData(sl()));
  sl.registerLazySingleton(() => GetGameUrl(sl()));
  sl.registerLazySingleton(() => GetUserData(sl<UserRepository>()));

  /// Repository
  sl.registerLazySingleton<HomeRepository>(
    () => HomeRepositoryImpl(
      localDataSource: sl(),
      networkInfo: sl(),
      remoteDataSource: sl(),
    ),
  );
  sl.registerLazySingleton<UserRepository>(
    () => UserRepositoryImpl(
      networkInfo: sl(),
      remoteDataSource: sl(),
    ),
  );
  sl.registerLazySingleton<DepositRepository>(
    () => DepositRepositoryImpl(
      networkInfo: sl(),
      remoteDataSource: sl(),
    ),
  );
  sl.registerLazySingleton<PromoRepository>(
    () => PromoRepositoryImpl(
      networkInfo: sl(),
      remoteDataSource: sl(),
      localDataSource: sl(),
    ),
  );
  sl.registerLazySingleton<MemberRepository>(
    () => MemberRepositoryImpl(
      networkInfo: sl(),
      remoteDataSource: sl(),
    ),
  );

  /// Data sources
  sl.registerLazySingleton<HomeRemoteDataSource>(
    () => HomeRemoteDataSourceImpl(dioApiService: sl()),
  );
  sl.registerLazySingleton<HomeLocalDataSource>(
    () => HomeLocalDataSourceImpl(),
  );
  sl.registerLazySingleton<UserRemoteDataSource>(
    () => UserRemoteDataSourceImpl(dioApiService: sl()),
  );
  sl.registerLazySingleton<DepositRemoteDataSource>(
    () => DepositRemoteDataSourceImpl(dioApiService: sl()),
  );
  sl.registerLazySingleton<PromoRemoteDataSource>(
    () => PromoRemoteDataSourceImpl(dioApiService: sl()),
  );
  sl.registerLazySingleton<PromoLocalDataSource>(
    () => PromoLocalDataSourceImpl(),
  );
  sl.registerLazySingleton<MemberRemoteDataSource>(
    () => MemberRemoteDataSourceImpl(dioApiService: sl()),
  );

  /// Core
  sl.registerLazySingleton(() => DioApiService());
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  /// External Package
  sl.registerSingleton(() => MyLogger());
  sl.registerLazySingleton(() => DataConnectionChecker());

  /// Test only
  /* Template Mobx */
  sl.registerLazySingleton<TemplateRemoteDataSource>(
    () => TemplateRemoteDataSourceImpl(dioApiService: sl()),
  );

  sl.registerLazySingleton<TemplateRepository>(
    () => TemplateRepositoryImpl(
      networkInfo: sl(),
      remoteDataSource: sl(),
    ),
  );

  sl.registerLazySingleton<TemplateStore>(
    () => TemplateStore(sl<TemplateRepository>()),
  );

  /* Template Bloc */
  sl.registerFactory(
    () => Template2Bloc(
      descriptionData: sl(),
      descriptionData2: sl(),
    ),
  );

  sl.registerLazySingleton(() => GetDescriptionData(sl()));
  sl.registerLazySingleton(() => GetDescriptionData2(sl()));

  sl.registerLazySingleton<Template2Repository>(
    () => Template2RepositoryImpl(
      networkInfo: sl(),
      remoteDataSource: sl(),
    ),
  );

  sl.registerLazySingleton<Template2DataSource>(
    () => Template2DataSourceImpl(dioApiService: sl()),
  );
}
