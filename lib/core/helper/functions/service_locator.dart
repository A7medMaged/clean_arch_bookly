import 'package:bookly_ca/core/services/api_services.dart';
import 'package:bookly_ca/features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly_ca/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly_ca/features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void serviceLocator() {
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      homeRemoteDataSource: HomeRemoteDataSourceImpl(getIt.get<ApiServices>()),
      homeLocalDataSource: HomeLocalDataSourceImpl(),
    ),
  );
}
