import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:store_app/core/constant/hive_const.dart';
import 'package:store_app/core/utils/app_router.dart';
import 'package:store_app/feautres/product/domain/entities/category_entity.dart';

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
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: AppRouter.onGenerateRoute,
        );
      },
    );
  }
}
