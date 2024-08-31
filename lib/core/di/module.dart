import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:group5_project/core/network/api_service.dart';
import 'package:group5_project/core/network/dio_config.dart';
import 'package:group5_project/features/home/logic/now_showing/movie_cubit.dart';
import 'package:group5_project/features/home/repository/movie_repository.dart';

import '../../features/home/logic/popular/popular_cubit.dart';

GetIt getIt = GetIt.instance;

void setupDependencies() {
  getIt.registerLazySingleton<Dio>(() => DioConfig.getDio());

  getIt.registerLazySingleton<ApiService>(
    () => ApiServiceImpl(getIt()),
  );

  getIt.registerFactory<MovieRepository>(() => MovieRepositoryImp(getIt()));

  getIt.registerSingleton<NowShowingCubit>(NowShowingCubit(getIt()));
  getIt.registerSingleton<PopularCubit>(PopularCubit(getIt()));
}
