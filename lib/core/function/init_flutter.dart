import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:store_app/feautres/localization/domain/enum_locale.dart';
import 'package:store_app/feautres/theme/domain/model/theme.dart';
import '../utils/bloc_obeserver.dart';

import '../../feautres/products/domain/entities/category_entity.dart';
import '../../feautres/products/domain/entities/product_entity.dart';

import '../utils/dependency_injection.dart';

Future<void> initFlutter() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initGetIt();
  await Hive.initFlutter();
  Bloc.observer = MyBlocObserver();
  Hive.registerAdapter<CategoryEntity>(CategoryEntityAdapter());
  Hive.registerAdapter<ProductEntity>(ProductEntityAdapter());
  Hive.registerAdapter<AppTheme>(AppThemeAdapter());
  Hive.registerAdapter<AppLocale>(AppLanguageAdapter());
}
