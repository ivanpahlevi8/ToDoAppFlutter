import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
//import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:to_do_app_flutter/core/connection/apis.dart';
import 'package:to_do_app_flutter/core/connection/base_network.dart';
import 'package:to_do_app_flutter/core/connection/network_service.dart';
import 'package:to_do_app_flutter/core/connection/token_interceptor.dart';
import 'package:to_do_app_flutter/core/connection/validators.dart';
import 'package:to_do_app_flutter/core/exception/exception_builder.dart';
import 'package:to_do_app_flutter/core/exception/exception_handler.dart';
import 'package:to_do_app_flutter/features/Authentication/data/datasource/auth_remote_datasource.dart';
import 'package:to_do_app_flutter/features/Authentication/data/datasource/user_login_datasource.dart';
import 'package:to_do_app_flutter/features/Authentication/data/repositories/auth_repository_impl.dart';
import 'package:to_do_app_flutter/features/Authentication/data/repositories/user_login_repository_impl.dart';
import 'package:to_do_app_flutter/features/Authentication/domain/usecase/auth_usecase.dart';
import 'package:to_do_app_flutter/features/Authentication/domain/usecase/user_login_usecase.dart';
import 'package:to_do_app_flutter/features/OnBoarding/data/datasource/on_board_local_datasource.dart';
import 'package:to_do_app_flutter/features/OnBoarding/data/repository/on_board_local_repository_impl.dart';
import 'package:to_do_app_flutter/features/OnBoarding/domain/repository/on_board_local_repository.dart';
import 'package:to_do_app_flutter/features/OnBoarding/domain/usecase/on_board_local_usecase.dart';
import 'package:to_do_app_flutter/features/search_friends/data/datasource/search_friend_remote_datasource.dart';
import 'package:to_do_app_flutter/features/search_friends/data/repositories/search_friend_remote_repository_impl.dart';
import 'package:to_do_app_flutter/features/search_friends/domain/usecase/search_friend_usecase.dart';

final GetIt sl = GetIt.instance; // Service locator instance

Future<void> setupServiceLocator() async {
  // Initialize Isar only once
  //final dir = await getApplicationSupportDirectory();
  // final isar = await Isar.open([
  //   MovieCollectionSchema,
  //   ProductionCompanyCollectionSchema,
  //   SerieCollectionSchema,
  // ], directory: dir.path);

  // create shared preferences instance
  final sharedPreferences = await SharedPreferences.getInstance();

  // Register Isar instance in GetIt
  //sl.registerSingleton<Isar>(isar);

  // register shared preferences
  sl.registerSingleton<SharedPreferences>(sharedPreferences);

  /**
   * Define instance of exception handlers under this
   */
  sl.registerLazySingleton(() => NetworkExceptionBuilder());
  sl.registerLazySingleton(() => StorageExceptionBuilder());

  sl.registerLazySingleton(
    () => NetworkExceptionHandler(sl<NetworkExceptionBuilder>()),
  );

  sl.registerLazySingleton(
    () => StorageExceptionHandler(sl<StorageExceptionBuilder>()),
  );

  // create instance of on board datasource and register to di
  final onBoardLocalDatasource = OnBoardLocalDataSourceImpl(
    sharedPreference: sharedPreferences,
  );

  sl.registerSingleton<OnBoardLocalDatasource>(onBoardLocalDatasource);

  // create instance of on board local repositoru to di
  sl.registerLazySingleton<OnBoardLocalRepository>(
    () => OnBoardLocalRepositoryImpl(
      handler: sl<StorageExceptionHandler>(),
      onBoardLocalDatasource: sl<OnBoardLocalDatasource>(),
    ),
  );

  // create instance of on board local usecase
  sl.registerLazySingleton(
    () => OnBoardLocalUsecase(
      onBoardLocalRepository: sl<OnBoardLocalRepository>(),
    ),
  );

  // create instance for dio
  sl.registerLazySingleton(
    () => TokenInterceptor(sl<Apis>(), sl<SharedPreferences>()),
  );

  // 3. Create instance for Dio AND ATTACH THE INTERCEPTOR
  sl.registerLazySingleton(() {
    final dio = Dio();

    dio.interceptors.add(sl<TokenInterceptor>());

    return dio;
  });

  // create instance for network service
  sl.registerLazySingleton(
    () => NetworkService(
      dio: sl<Dio>(),
      exceptionHandler: sl<NetworkExceptionHandler>(),
    ),
  );

  // create instance for apis
  sl.registerLazySingleton(() => Apis());

  // create instance for validators
  sl.registerLazySingleton(
    () => NetworkValidator(sl<NetworkExceptionHandler>()),
  );

  // create instance for base network
  sl.registerLazySingleton(
    () => BaseNetwork(
      service: sl<NetworkService>(),
      validator: sl<NetworkValidator>(),
      apis: sl<Apis>(),
    ),
  );

  // create instance for auth remote datasource
  sl.registerLazySingleton(
    () => AuthRemoteDatasourceImpl(
      service: sl<NetworkService>(),
      validator: sl<NetworkValidator>(),
      apis: sl<Apis>(),
    ),
  );

  // create instance for auth remote repository
  sl.registerLazySingleton(
    () => AuthRepositoryImpl(
      authRemoteDatasource: sl<AuthRemoteDatasourceImpl>(),
    ),
  );

  sl.registerLazySingleton(
    () => UserLoginDatasourceImpl(sharedPreferences: sharedPreferences),
  );

  sl.registerLazySingleton(
    () => UserLoginRepositoryImpl(
      userLoginDatasource: sl<UserLoginDatasourceImpl>(),
      handler: sl<NetworkExceptionHandler>(),
    ),
  );

  sl.registerLazySingleton(
    () => UserLoginUsecase(userLoginRepository: sl<UserLoginRepositoryImpl>()),
  );

  // create instance for auth usecase
  sl.registerLazySingleton(
    () => AuthUsecase(
      authRepository: sl<AuthRepositoryImpl>(),
      userLoginRepository: sl<UserLoginRepositoryImpl>(),
    ),
  );

  /**
   * Under this is part for create service for search friend
   */
  // create instance for search friend remote datasource
  sl.registerLazySingleton(
    () => SearchfriendRemoteDatasourceImpl(
      service: sl<NetworkService>(),
      validator: sl<NetworkValidator>(),
      apis: sl<Apis>(),
    ),
  );

  // create instance for search friend remote repository
  sl.registerLazySingleton(
    () => SearchFriendRemoteRepositoryImpl(
      searchFriendRemoteDatasource: sl<SearchfriendRemoteDatasourceImpl>(),
    ),
  );

  // create instance for search friend usecase
  sl.registerLazySingleton(
    () => SearchFriendUsecase(
      searchFriendRemoteRepository: sl<SearchFriendRemoteRepositoryImpl>(),
    ),
  );
}
