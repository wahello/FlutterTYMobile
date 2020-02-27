import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter_ty_mobile/mylogger.dart';
import 'package:flutter_ty_mobile/template/template_export.dart';
import 'package:get_it/get_it.dart';

import 'core/network/dio_api_service.dart';
import 'core/network/util/network_info.dart';
import 'features/general/data/holds/user_data.dart';
import 'features/home/data/repository/home_repository_impl.dart';
import 'features/home/data/source/home_local_data_source.dart';
import 'features/home/data/source/home_remote_data_source.dart';
import 'features/home/domain/repository/home_repository.dart';
import 'features/home/domain/usecase/get_banner_data.dart';
import 'features/home/domain/usecase/get_banner_image.dart';
import 'features/home/domain/usecase/get_game_types.dart';
import 'features/home/domain/usecase/get_games.dart';
import 'features/home/domain/usecase/get_marquee.dart';
import 'features/home/presentation/bloc/banner/home_banner_bloc.dart';
import 'features/home/presentation/bloc/game/home_game_bloc.dart';
import 'features/home/presentation/bloc/game_tabs/home_game_tabs_bloc.dart';
import 'features/home/presentation/bloc/marquee/home_marquee_bloc.dart';
import 'features/member/data/repository/member_repository.dart';
import 'features/member/data/repository/member_repository_impl.dart';
import 'features/member/data/source/member_data_source.dart';
import 'features/member/data/source/member_data_source_impl.dart';
import 'features/router/router_navigate.dart' show RouterWidgetStreams;
import 'features/users/data/repository/user_repository_impl.dart';
import 'features/users/data/source/user_data_source.dart';
import 'features/users/domain/repository/user_repository.dart';
import 'features/users/domain/usecase/get_user.dart';
import 'features/users/presentation/bloc/user_login_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton<RouterWidgetStreams>(() => RouterWidgetStreams());

  /// Bloc
  sl.registerFactory(
    () => HomeBannerBloc(
      homeBannerData: sl(),
      homeBannerImageInfo: sl(),
    ),
  );
  sl.registerFactory(
    () => HomeMarqueeBloc(
      homeMarqueeData: sl(),
    ),
  );
  sl.registerFactory(
    () => HomeGameTabsBloc(
      gameTypesData: sl(),
    ),
  );
  sl.registerFactory(
    () => HomeGameBloc(
      gamesData: sl(),
    ),
  );
  sl.registerFactory(
    () => UserLoginBloc(
      userData: sl(),
    ),
  );

  /// Use cases
  sl.registerLazySingleton(() => GetHomeBannerData(sl()));
  sl.registerLazySingleton(() => GetHomeBannerImage());
  sl.registerLazySingleton(() => GetHomeMarqueeData(sl()));
  sl.registerLazySingleton(() => GetGameTypesData(sl()));
  sl.registerLazySingleton(() => GetGamesData(sl()));
  sl.registerLazySingleton(() => GetUserData(sl()));
  sl.registerLazySingleton(() => UserData(isLoggedIn: false));

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
