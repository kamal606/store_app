import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'api_services.dart';
import '../../feautres/products/data/data_source/local_data_source.dart/category_local_data_source.dart';
import '../../feautres/products/data/data_source/local_data_source.dart/products_local_data_source.dart';
import '../../feautres/products/data/data_source/local_data_source.dart/theme_local_data_source.dart';
import '../../feautres/products/data/data_source/remote_data_source/category_remote_data_source.dart';
import '../../feautres/products/data/data_source/remote_data_source/product_of_category_remote_date_source.dart';
import '../../feautres/products/data/repository/repo_category_impl.dart';
import '../../feautres/products/domain/repository/repo_category.dart';
import '../../feautres/products/domain/repository/repo_product.dart';
import '../../feautres/products/domain/use_cases/get_category_use_case.dart';
import '../../feautres/products/domain/use_cases/get_products_of_category_use_case.dart';
import '../../feautres/products/presentation/bloc/get_all_products/get_product_of_category_bloc.dart';
import '../../feautres/products/presentation/bloc/get_category/get_category_bloc.dart';
import '../../feautres/products/presentation/bloc/status_internet/status_internet_bloc.dart';
import '../../feautres/products/presentation/bloc/theme_app/theme_app_bloc.dart';

import '../../feautres/products/data/repository/repo_product_of_category_impl.dart';

final sl = GetIt.instance;

Future<void> initGetIt() async {
  //! Bloc
  sl.registerFactory(() => ThemeAppBloc(themeLocalDataSourceImpl: sl.call()));
  sl.registerFactory(() => GetCategoryBloc(getCategoryUseCases: sl.call()));
  sl.registerFactory(
      () => AllProductsBloc(getProductOfCategoryUseCase: sl.call()));
  sl.registerFactory(() => StatusInternetBloc());
  //! Data Sources

  sl.registerLazySingleton(() => ThemeLocalDataSourceImpl());
  sl.registerLazySingleton(() => AllProductsLocalDataSourceImpl());
  sl.registerLazySingleton(() => CategoryLocalDataSourceImpl());
  sl.registerLazySingleton<CategoryRemoteDataSourceImpl>(
      () => CategoryRemoteDataSourceImpl(
            categoryLocalDataSourceImpl: sl.call(),
            apiService: sl.call(),
          ));
  sl.registerLazySingleton<AllProductsRemoteDataSourceImpl>(() =>
      AllProductsRemoteDataSourceImpl(
          apiService: sl.call(), productsLocalDataSourceImpl: sl.call()));

  //! Repository
  sl.registerLazySingleton<CategoryRepo>(
    () => CategoryRepoImpl(
        categoryRemoteDataSourceImpl: sl.call(),
        categoryLocalDataSourceImpl: sl.call()),
  );
  sl.registerLazySingleton<AllProductsRepo>(
    () => GetProductOfCategoryRepoImpl(
        productsLocalDataSourceImpl: sl.call(),
        productOfCategoryRemoteDataSourceImpl: sl.call()),
  );

  //! Use Cases
  sl.registerLazySingleton(
      () => GetCategoryUseCases(getCategoryRepo: sl.call()));
  sl.registerLazySingleton(
      () => AllProductsUseCase(getProductsOfCategoryRepo: sl.call()));

  //! Core
  sl.registerLazySingleton<ApiService>(() => ApiService(sl.call()));

  //! External

  sl.registerLazySingleton<Dio>(() => Dio());
}
