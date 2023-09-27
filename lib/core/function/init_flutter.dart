import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:store_app/core/utils/bloc_obeserver.dart';

import '../utils/dependency_injection.dart';
import '../../feautres/product/domain/entities/category_entity.dart';
import '../../feautres/product/domain/entities/product_entity.dart';

Future<void> initFlutter() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initGetIt();
  await Hive.initFlutter();
  Bloc.observer = MyBlocObserver();
  Hive.registerAdapter<CategoryEntity>(CategoryEntityAdapter());
  Hive.registerAdapter<ProductEntity>(ProductEntityAdapter());
}
