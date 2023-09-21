import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:store_app/core/utils/api_services.dart';
import 'package:store_app/feautres/product/data/data_source/remote_data_source/category_remote_data_source.dart';
import 'package:store_app/feautres/product/data/repository/repo_category_impl.dart';
import 'package:store_app/feautres/product/domain/use_cases/get_category_use_case.dart';
import 'package:store_app/feautres/product/presentation/bloc/get_category/get_category_bloc.dart';

final sl = GetIt.instance;

Future<void> initGetIt() async {
  //Bloc

  sl.registerFactory<GetCategoryBloc>(
      () => GetCategoryBloc(getCategoryUseCases: sl.call()));

  //Data Sources

  sl.registerLazySingleton<CategoryRemoteDataSourceImpl>(
      () => CategoryRemoteDataSourceImpl(apiService: sl.call()));

  // Repository
  sl.registerLazySingleton<CategoryRepoImpl>(() => CategoryRepoImpl(
        categoryRemoteDataSourceImpl: sl.call(),
      ));

  //Use Cases

  sl.registerLazySingleton<GetCategoryUseCases>(
      () => GetCategoryUseCases(getCategoryRepo: sl.call()));

  //! Core
  sl.registerLazySingleton<ApiService>(
    () => ApiService(sl.call()),
  );

  //! External
  sl.registerLazySingleton<Dio>(() => Dio());
}
