import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/color/app_color.dart';

import 'package:store_app/feautres/product/presentation/bloc/get_category/get_category_bloc.dart';
import 'package:store_app/feautres/product/presentation/bloc/status_internet/status_internet_bloc.dart';
import 'core/function/init_flutter.dart';
import 'core/utils/go_router.dart';
import 'core/utils/dependency_injection.dart' as di;

Future<void> main() async {
  await initFlutter();
  await Future.delayed(const Duration(milliseconds: 300));

  runApp(const StoreApp());
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
            BlocProvider(
              create: (context) => di.sl<StatusInternetBloc>(),
            ),
          ],
          child: MaterialApp.router(
            routerConfig: AppRouter.router,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                brightness: Brightness.light,
                fontFamily: "Poppins",
                scaffoldBackgroundColor: AppColor.white),
          ),
        );
      },
    );
  }
}
