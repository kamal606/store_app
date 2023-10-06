import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/feautres/cart/presentation/bloc/cart/cart_bloc.dart';
import 'package:store_app/feautres/favorite/presentation/blocs/favorite/favorite_bloc.dart';

import 'package:store_app/feautres/localization/presntation/locale_bloc/locale_bloc.dart';
import 'package:store_app/feautres/theme/presentation/bloc/theme_app/theme_app_bloc.dart';
import 'package:store_app/generated/l10n.dart';

import 'core/function/init_flutter.dart';
import 'core/utils/dependency_injection.dart' as di;
import 'core/utils/go_router.dart';
import 'feautres/products/presentation/bloc/get_category/get_category_bloc.dart';
import 'feautres/products/presentation/bloc/status_internet/status_internet_bloc.dart';

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
              create: (context) =>
                  di.sl<AppThemeBloc>()..add(CurrentThemeEvent()),
            ),
            BlocProvider(
              create: (context) =>
                  di.sl<AppLocaleBloc>()..add(CurrentLocaleEvent()),
            ),
            BlocProvider(
              create: (context) => di.sl<GetCategoryBloc>()..add(GetCategory()),
            ),
            BlocProvider(
              create: (context) => di.sl<StatusInternetBloc>(),
            ),
            BlocProvider(
              create: (context) =>
                  di.sl<FavoriteBloc>()..add(FavoriteStartAppEvent()),
            ),
            BlocProvider(
              create: (context) => di.sl<CartBloc>()..add(CartStartAppEvent()),
            ),
          ],
          child: BlocBuilder<AppThemeBloc, AppThemeState>(
            builder: (context, state) {
              if (state is ChangedThemeState) {
                return BlocBuilder<AppLocaleBloc, AppLocaleState>(
                  builder: (context, stateLocale) {
                    if (stateLocale is ChangeLocaleState) {
                      return MaterialApp.router(
                        localizationsDelegates: const [
                          S.delegate,
                          GlobalMaterialLocalizations.delegate,
                          GlobalWidgetsLocalizations.delegate,
                          GlobalCupertinoLocalizations.delegate,
                        ],
                        supportedLocales: S.delegate.supportedLocales,
                        routerConfig: AppRouter.router,
                        debugShowCheckedModeBanner: false,
                        theme: state.changedTheme,
                        locale: stateLocale.locale,
                      );
                    } else {
                      return const SizedBox();
                    }
                  },
                );
              } else {
                return const SizedBox();
              }
            },
          ),
        );
      },
    );
  }
}
