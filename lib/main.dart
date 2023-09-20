import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:store_app/core/constant/hive_const.dart';
import 'package:store_app/core/utils/api_services.dart';
import 'package:store_app/core/utils/app_router.dart';
import 'package:store_app/feautres/product/data/data_source/local_data_source.dart/category_local_data_source.dart';
import 'package:store_app/feautres/product/data/data_source/remote_data_source/category_remote_data_source.dart';
import 'package:store_app/feautres/product/data/repository/repo_category_impl.dart';
import 'package:store_app/feautres/product/domain/entities/category_entity.dart';
import 'package:store_app/feautres/product/domain/use_cases/get_category_use_case.dart';
import 'package:store_app/feautres/product/presentation/bloc/get_category/get_category_bloc.dart';

Future<void> main() async {
  runApp(const StoreApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(CategoryEntityAdapter());
  await Hive.openBox(AppHive.categoryBox);
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return BlocProvider(
          create: (context) => GetCategoryBloc(
              getCategoryUseCases: GetCategoryUseCases(
                  getCategoryRepo: CategoryRepoImpl(
                      categoryLocalDataSourceImpl:
                          CategoryLocalDataSourceImpl(),
                      categoryRemoteDataSourceImpl:
                          CategoryRemoteDataSourceImpl(
                              apiService: ApiService(Dio()))))),
          child: const MaterialApp(
            debugShowCheckedModeBanner: false,
            onGenerateRoute: AppRouter.onGenerateRoute,
          ),
        );
      },
    );
  }
}
