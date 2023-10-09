import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:store_app/feautres/cart/data/local_data_source/cart_local_data_source.dart';
import 'package:store_app/feautres/cart/presentation/bloc/cart/cart_bloc.dart';
import 'package:store_app/feautres/favorite/data/local_data_source/favorite_local_data_source.dart';
import 'package:store_app/feautres/favorite/presentation/blocs/favorite/favorite_bloc.dart';
import 'package:store_app/feautres/localization/data/local_data_source/locale_local_data_source.dart';
import 'package:store_app/feautres/localization/presntation/locale_bloc/locale_bloc.dart';
import 'package:store_app/feautres/products/data/data_source/local_data_source.dart/products_of_category_local.dart';
import 'package:store_app/feautres/products/data/data_source/remote_data_source/products_of_category_remote.dart';
import 'package:store_app/feautres/products/data/repository/get_products_of_category_impl.dart';
import 'package:store_app/feautres/products/domain/repository/repo_product_of_category.dart';
import 'package:store_app/feautres/products/domain/use_cases/get_products_of_category.dart';
import 'package:store_app/feautres/products/presentation/bloc/get_products_of_category/get_products_of_category_bloc.dart';
import 'package:store_app/feautres/theme/presentation/bloc/theme_app/theme_app_bloc.dart';
import 'api_services.dart';
import '../../feautres/products/data/data_source/local_data_source.dart/category_local_data_source.dart';
import '../../feautres/products/data/data_source/local_data_source.dart/products_local_data_source.dart';
import '../../feautres/theme/data/local_data_source/theme_local_data_source.dart';
import '../../feautres/products/data/data_source/remote_data_source/category_remote_data_source.dart';
import '../../feautres/products/data/data_source/remote_data_source/all_products.dart';
import '../../feautres/products/data/repository/repo_category_impl.dart';
import '../../feautres/products/domain/repository/repo_category.dart';
import '../../feautres/products/domain/repository/repo_product.dart';
import '../../feautres/products/domain/use_cases/get_category_use_case.dart';
import '../../feautres/products/domain/use_cases/get_all_products_use_case.dart';
import '../../feautres/products/presentation/bloc/get_all_products/get_all_products_bloc.dart';
import '../../feautres/products/presentation/bloc/get_category/get_category_bloc.dart';
import '../../feautres/products/presentation/bloc/status_internet/status_internet_bloc.dart';

import '../../feautres/products/data/repository/repo_product_of_category_impl.dart';

final sl = GetIt.instance;

Future<void> initGetIt() async {
  //! Bloc

  sl.registerFactory(
      () => GetProductsOfCategoryBloc(getProductsUseCase: sl.call()));
  sl.registerFactory(() => CartBloc(cartLocalDataSourceImpl: sl.call()));
  sl.registerFactory(
      () => FavoriteBloc(favoriteLocalDataSourceImpl: sl.call()));
  sl.registerFactory(() => AppThemeBloc(themeLocalDataSourceImpl: sl.call()));
  sl.registerFactory(() => GetCategoryBloc(getCategoryUseCases: sl.call()));
  sl.registerFactory(
      () => AllProductsBloc(getProductOfCategoryUseCase: sl.call()));
  sl.registerFactory(() => StatusInternetBloc());
  sl.registerFactory(() => AppLocaleBloc(localeLocalDataSourceImpl: sl.call()));
  //! Data Sources

  sl.registerLazySingleton(() => GetProductsOfCategoryLocalDataSourceImpl());
  sl.registerLazySingleton(() => GetProductsOfCategoryRemoteDataSourceImpl(
      apiService: sl.call(), gerProductsLocal: sl.call()));
  sl.registerLazySingleton(() => CartLocalDataSourceImpl());
  sl.registerLazySingleton(() => FavoriteLocalDataSourceImpl());
  sl.registerLazySingleton(() => LocaleLocalDataSourceImpl());
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
  sl.registerLazySingleton<GetProductsOfCategoryRepo>(
    () => GetProductsOfCategoryRepoImpl(
        getProductsLocal: sl.call(), getProductsRemote: sl.call()),
  );
  sl.registerLazySingleton<CategoryRepo>(
    () => CategoryRepoImpl(
        categoryRemoteDataSourceImpl: sl.call(),
        categoryLocalDataSourceImpl: sl.call()),
  );
  sl.registerLazySingleton<AllProductsRepo>(
    () => GetAllProductsRepoImpl(
        productsLocalDataSourceImpl: sl.call(),
        productOfCategoryRemoteDataSourceImpl: sl.call()),
  );

  //! Use Cases
  sl.registerLazySingleton(
      () => GetProductsOfCategoryUseCase(getProductsOfCategoryRepo: sl.call()));
  sl.registerLazySingleton(
      () => GetCategoryUseCases(getCategoryRepo: sl.call()));
  sl.registerLazySingleton(
      () => AllProductsUseCase(getProductsOfCategoryRepo: sl.call()));

  //! Core
  sl.registerLazySingleton<ApiService>(() => ApiService(sl.call()));

  //! External

  sl.registerLazySingleton<Dio>(() => Dio());
}
