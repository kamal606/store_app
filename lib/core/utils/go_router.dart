import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/feautres/product/presentation/view/home_view.dart';
import 'package:store_app/dependency_injection.dart' as di;

import '../../feautres/product/presentation/bloc/get_product_of_category/get_product_of_category_bloc.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => BlocProvider(
          create: (context) =>
              di.sl<GetProductOfCategoryBloc>()..add(GetProductOfCategory()),
          child: const HomeView(),
        ),
      ),
    ],
  );
}
