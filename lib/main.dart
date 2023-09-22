import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:store_app/dependency_injection.dart';

import 'package:store_app/feautres/product/presentation/bloc/get_category/get_category_bloc.dart';

import 'core/constant/hive_const.dart';
import 'core/utils/go_router.dart';
import 'dependency_injection.dart' as di;
import 'feautres/product/domain/entities/category_entity.dart';

Future<void> main() async {
  runApp(const StoreApp());
  WidgetsFlutterBinding.ensureInitialized();
  await initGetIt();
  await Hive.initFlutter();
  Hive.registerAdapter<CategoryEntity>(CategoryEntityAdapter());
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
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => di.sl<GetCategoryBloc>()..add(GetCategory()),
            ),
          ],
          child: MaterialApp.router(
            routerConfig: AppRouter.router,
            debugShowCheckedModeBanner: false,
          ),
        );
      },
    );
  }
}
