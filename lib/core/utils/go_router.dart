import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/feautres/product/presentation/bloc/get_all_products/get_product_of_category_bloc.dart';
import 'package:store_app/feautres/product/presentation/view/cart_view.dart';
import 'package:store_app/feautres/product/presentation/view/favorite_view.dart';
import 'package:store_app/feautres/product/presentation/view/home_view.dart';
import 'package:store_app/core/utils/dependency_injection.dart' as di;
import 'package:store_app/feautres/product/presentation/view/profile_view.dart';

abstract class AppRouter {
  static const String cartView = "/cartView";
  static const String favoriteView = "/favoriteView";
  static const String profileView = "/profileView";
  static final router = GoRouter(
    routes: [
      // GoRoute(path: "/", builder: (context, state) => const MyApp()),
      GoRoute(
        path: "/",
        builder: (context, state) => BlocProvider(
          create: (context) =>
              di.sl<AllProductsBloc>()..add(GetAllProductsEvent()),
          child: const HomeView(),
        ),
      ),
      GoRoute(
        path: cartView,
        builder: (context, state) => const CartView(),
      ),
      GoRoute(
        path: favoriteView,
        builder: (context, state) => const FavoriteView(),
      ),
      GoRoute(
        path: profileView,
        builder: (context, state) => const ProfileView(),
      ),
    ],
  );
}
