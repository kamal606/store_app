import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:store_app/feautres/product/data/data_source/local_data_source.dart/category_local_data_source.dart';
import 'package:store_app/feautres/product/data/data_source/local_data_source.dart/products_local_data_source.dart';
import 'package:store_app/feautres/product/domain/repository/repo_category.dart';
import 'package:store_app/feautres/product/domain/repository/repo_product.dart';

import 'api_services.dart';
import '../../feautres/product/data/data_source/remote_data_source/category_remote_data_source.dart';
import '../../feautres/product/data/data_source/remote_data_source/product_of_category_remote_date_source.dart';
import '../../feautres/product/data/repository/repo_category_impl.dart';
import '../../feautres/product/data/repository/repo_product_of_category_impl.dart';
import '../../feautres/product/domain/use_cases/get_category_use_case.dart';
import '../../feautres/product/domain/use_cases/get_products_of_category_use_case.dart';
import '../../feautres/product/presentation/bloc/get_category/get_category_bloc.dart';
import '../../feautres/product/presentation/bloc/get_product_of_category/get_product_of_category_bloc.dart';

final sl = GetIt.instance;

Future<void> initGetIt() async {
  //! Bloc
  sl.registerFactory(() => GetCategoryBloc(getCategoryUseCases: sl.call()));
  sl.registerFactory(
      () => GetProductOfCategoryBloc(getProductOfCategoryUseCase: sl.call()));

  //! Data Sources
  sl.registerLazySingleton(() => ProductsLocalDataSourceImpl());
  sl.registerLazySingleton(() => CategoryLocalDataSourceImpl());
  sl.registerLazySingleton<CategoryRemoteDataSourceImpl>(
      () => CategoryRemoteDataSourceImpl(
            categoryLocalDataSourceImpl: sl.call(),
            apiService: sl.call(),
          ));
  sl.registerLazySingleton<ProductOfCategoryRemoteDataSourceImpl>(() =>
      ProductOfCategoryRemoteDataSourceImpl(
          apiService: sl.call(), productsLocalDataSourceImpl: sl.call()));

  //! Repository
  sl.registerLazySingleton<CategoryRepo>(
    () => CategoryRepoImpl(
        categoryRemoteDataSourceImpl: sl.call(),
        categoryLocalDataSourceImpl: sl.call()),
  );
  sl.registerLazySingleton<GetProductsOfCategoryRepo>(
    () => GetProductOfCategoryRepoImpl(
        productsLocalDataSourceImpl: sl.call(),
        productOfCategoryRemoteDataSourceImpl: sl.call()),
  );

  //! Use Cases
  sl.registerLazySingleton(
      () => GetCategoryUseCases(getCategoryRepo: sl.call()));
  sl.registerLazySingleton(
      () => GetProductOfCategoryUseCase(getProductsOfCategoryRepo: sl.call()));

  //! Core
  sl.registerLazySingleton<ApiService>(() => ApiService(sl.call()));

  //! External

  sl.registerLazySingleton<Dio>(() => Dio());
}
