import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/data_sources/home_local_data_src.dart';
import 'package:bookly_app/features/home/data/data_sources/home_remote_data_src.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton(ApiService(Dio()));
   getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
        homeRemoteDataSrc:
            HomeRemoteImplementation(apiService: getIt.get<ApiService>() ),
        homeLocalDataSrc: HomeLocalDataSrcImpl()),
  );
}