import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:store_app/feautres/auth/data/data_source/remote_data_source/auth_remote/auth_get_user_remote.dart';
import 'package:store_app/feautres/auth/data/data_source/remote_data_source/auth_remote/auth_sign_up_remote.dart';
import 'package:store_app/feautres/auth/data/data_source/remote_data_source/user_remote/create_user_remote.dart';
import 'package:store_app/feautres/auth/data/data_source/remote_data_source/user_remote/get_user_remote.dart';
import 'package:store_app/feautres/auth/data/repository/auth_repository/get_user_repo_impl.dart';
import 'package:store_app/feautres/auth/data/repository/auth_repository/signup_repo_impl.dart';
import 'package:store_app/feautres/auth/data/repository/user_repository/create_user_repo_impl.dart';
import 'package:store_app/feautres/auth/data/repository/user_repository/get_user_repo_impl.dart';
import 'package:store_app/feautres/auth/domain/repository/auth_repository/auth_get_user_repo.dart';
import 'package:store_app/feautres/auth/domain/repository/auth_repository/auth_sign_up_repo.dart';
import 'package:store_app/feautres/auth/domain/repository/user_repository/create_user_repo.dart';
import 'package:store_app/feautres/auth/domain/repository/user_repository/get_user_repo.dart';
import 'package:store_app/feautres/auth/domain/use_cases/auth_use_case/auth_get_user_use_case.dart';
import 'package:store_app/feautres/auth/domain/use_cases/auth_use_case/auth_sign_up_use_case.dart';
import 'package:store_app/feautres/auth/domain/use_cases/user_use_case/create_user_use_case.dart';
import 'package:store_app/feautres/auth/domain/use_cases/user_use_case/get_user_use_case.dart';
import 'package:store_app/feautres/auth/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:store_app/feautres/auth/presentation/bloc/auth_listen_bloc/auth_listen_bloc.dart';
import 'package:store_app/feautres/auth/presentation/bloc/user_bloc/user_bloc.dart';
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
  sl.registerFactory(() => UserBloc(createUserUseCase: sl.call()));
  sl.registerFactory(() => AuthBloc(
        userBloc: sl.call(),
        authSignUpUseCase: sl.call(),
      ));
  sl.registerFactory(() =>
      AuthListenBloc(authGetUserUseCase: sl.call(), getUserUseCase: sl.call()));
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
  sl.registerLazySingleton(
      () => CreateUserRemoteDataSourceImpl(firebaseFirestore: sl.call()));
  sl.registerLazySingleton(
      () => AuthSignUpRemoteDataSourceImpl(firebaseAuth: sl.call()));
  sl.registerLazySingleton(
      () => GetUserRemoteDataSourceImpl(firebaseFirestore: sl.call()));
  sl.registerLazySingleton<AuthGetUserRemoteDataSource>(
      () => AuthGetUserRemoteDataSourceImpl(firebaseAuth: sl.call()));
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
  sl.registerLazySingleton<CreateUserRepo>(
    () => CreateUserRepoImpl(createUserRemoteDataSourceImpl: sl.call()),
  );
  sl.registerLazySingleton<AuthSignUpUserRepo>(
    () => AuthSignUpUserRepoImpl(authSignUpRemoteDataSourceImpl: sl.call()),
  );
  sl.registerLazySingleton<AuthGetUserRepo>(
    () => AuthGetUserRepoImpl(authGetUserRemoteDataSource: sl.call()),
  );
  sl.registerLazySingleton<GetUserRepo>(
    () => GetUserRepoImpl(getUserRemoteDataSourceImpl: sl.call()),
  );
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
  sl.registerLazySingleton(() => CreateUserUseCase(createUserRepo: sl.call()));
  sl.registerLazySingleton(() => AuthSignUpUseCase(signUpUserRepo: sl.call()));
  sl.registerLazySingleton(() => GetUserUseCase(getUserRepo: sl.call()));
  sl.registerLazySingleton(
      () => AuthGetUserUseCase(authGetUserRepo: sl.call()));
  sl.registerLazySingleton(
      () => GetProductsOfCategoryUseCase(getProductsOfCategoryRepo: sl.call()));
  sl.registerLazySingleton(
      () => GetCategoryUseCases(getCategoryRepo: sl.call()));
  sl.registerLazySingleton(
      () => AllProductsUseCase(getProductsOfCategoryRepo: sl.call()));

  //! Core
  sl.registerLazySingleton<ApiService>(() => ApiService(sl.call()));

  //! External
  sl.registerLazySingleton<FirebaseFirestore>(() => FirebaseFirestore.instance);
  sl.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  sl.registerLazySingleton<Dio>(() => Dio());
}
