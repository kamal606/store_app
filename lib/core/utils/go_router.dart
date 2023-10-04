import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/feautres/start_app/presentation/view/choose_language_view.dart';
import 'package:store_app/feautres/start_app/presentation/view/onbording_view.dart';

import 'package:store_app/feautres/start_app/presentation/view/splash_view.dart';

import 'dependency_injection.dart' as di;
import '../../feautres/products/domain/entities/product_entity.dart';
import '../../feautres/products/presentation/bloc/get_all_products/get_product_of_category_bloc.dart';
import '../../feautres/products/presentation/view/cart_view.dart';
import '../../feautres/products/presentation/view/details_product.dart';
import '../../feautres/favorite/presentation/view/favorite_view.dart';
import '../../feautres/products/presentation/view/home_view.dart';
import '../../feautres/products/presentation/view/profile_view.dart';

abstract class AppRouter {
  static const String cartView = "/cartView";
  static const String favoriteView = "/favoriteView";
  static const String profileView = "/profileView";
  static const String detailsProductView = "/detailsProductView";
  static const String homeView = "/homeView";
  static const String onBordingView = "/onBordingView";
  static const String chooseLanguageView = "/chooseLanguageView";

  static final router = GoRouter(
    routes: [
      // GoRoute(path: "/", builder: (context, state) => const MyApp()),
      GoRoute(
        path: "/",
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: chooseLanguageView,
        builder: (context, state) => const ChooseLanguageView(),
      ),
      GoRoute(
        path: AppRouter.onBordingView,
        builder: (context, state) => const OnBordingView(),
      ),

      GoRoute(
        path: AppRouter.homeView,
        builder: (context, state) => BlocProvider(
          create: (context) =>
              di.sl<AllProductsBloc>()..add(GetAllProductsEvent()),
          child: const HomeView(),
        ),
      ),
      GoRoute(
        path: AppRouter.cartView,
        builder: (context, state) => const CartView(),
      ),
      GoRoute(
        path: AppRouter.favoriteView,
        builder: (context, state) => const FavoriteView(),
      ),
      GoRoute(
        path: AppRouter.profileView,
        builder: (context, state) => const ProfileView(),
      ),
      GoRoute(
        path: AppRouter.detailsProductView,
        builder: (context, state) =>
            DetailsProductView(productEntity: state.extra as ProductEntity),
      ),
    ],
  );
}
