import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:loqma_food_delivery_app/core/network/dio_factory.dart';
import 'package:loqma_food_delivery_app/core/router/app_router.dart';
import 'package:loqma_food_delivery_app/core/router/routes.dart';
import 'package:loqma_food_delivery_app/features/auth/data/datasource/auth_api_service.dart';
import 'package:loqma_food_delivery_app/features/home/data/datasources/home_api_service.dart';
import 'package:loqma_food_delivery_app/features/auth/data/datasource/auth_local_data_source.dart';
import 'package:loqma_food_delivery_app/features/auth/data/datasource/auth_remote_data_source.dart';
import 'package:loqma_food_delivery_app/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:loqma_food_delivery_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:loqma_food_delivery_app/features/auth/domain/usecases/login_usecase.dart';
import 'package:loqma_food_delivery_app/features/auth/domain/usecases/register_usecase.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/cubits/register/register_cubit.dart';
import 'package:loqma_food_delivery_app/features/home/data/datasources/home_remote_data_source.dart';
import 'package:loqma_food_delivery_app/features/home/data/repositories/home_repository_impl.dart';
import 'package:loqma_food_delivery_app/features/home/domain/repositories/home_repository.dart';
import 'package:loqma_food_delivery_app/features/home/domain/usecases/get_home_usecase.dart';
import 'package:loqma_food_delivery_app/features/home/presentation/cubit/home_cubit.dart';

/// الـ service locator بتاع التطبيق كله.
/// أي حتة محتاجة dependency بتطلبها كده: sl<AuthRemoteDataSource>()
final sl = GetIt.instance;

/// بتتنادى مرة واحدة في main() قبل runApp.
void setupServiceLocator() {
  _initCore();
  _initAuth();
  _initHome();
}

//! ───────────────────────── Core ─────────────────────────
void _initCore() {
  // Dio واحد للتطبيق كله (عليه الـ logger وبعدين الـ interceptors)
  sl.registerLazySingleton<Dio>(
    () => DioFactory(onSessionExpired: _goToLogin).dio,
  );
}

//! ───────────────────────── Auth ─────────────────────────
void _initAuth() {
  // Data sources
  sl.registerLazySingleton<AuthApiService>(() => AuthApiService(sl<Dio>()));
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSource(apiService: sl<AuthApiService>()),
  );
  sl.registerLazySingleton<AuthLocalDataSource>(
    () => const AuthLocalDataSource(),
  );

  // TODO: لما نعمل الـ domain والـ repository impl والـ cubit:
  // Repository (بنسجله بالـ abstract type عشان الـ domain ميعرفش الـ impl)
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(remoteDataSource: sl(), localDataSource: sl()),
  );
  //
  // Use cases
  sl.registerLazySingleton(() => LoginUseCase(sl()));
  sl.registerLazySingleton(() => RegisterUseCase(sl()));
  //
  // sl.registerFactory(() => LoginCubit(sl()));
  // every once we open the screen, we want a new instance of the cubit, so we use registerFactory
  sl.registerFactory(() => LoginCubit(loginUseCase: sl()));
  sl.registerFactory(() => RegisterCubit(registerUseCase: sl()));
}

//! ───────────────────────── Home ─────────────────────────
void _initHome() {
  sl.registerLazySingleton<HomeApiService>(() => HomeApiService(sl<Dio>()));
  sl.registerLazySingleton<HomeRemoteDataSource>(
    () => HomeRemoteDataSource(apiService: sl<HomeApiService>()),
  );
  sl.registerLazySingleton<HomeRepository>(
    () => HomeRepositoryImpl(remoteDataSource: sl()),
  );
  sl.registerLazySingleton(() => GetHomeUseCase(repository: sl()));
  sl.registerFactory(() => HomeCubit(getHomeUseCase: sl()));
}

// Session expired -> clear the whole stack and open the login screen
void _goToLogin() {
  AppRouter.navigatorKey.currentState?.pushNamedAndRemoveUntil(
    Routes.login,
    (_) => false,
  );
}
