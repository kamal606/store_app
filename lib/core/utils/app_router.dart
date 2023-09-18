import 'package:flutter/material.dart';
import 'package:store_app/core/constant/route_name.dart';
import 'package:store_app/feautres/product/presentation/view/home_view.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    // ignore: avoid_print
    print('Route: ${settings.name}');
    switch (settings.name) {
      case RouteName.home:
        return HomeView.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error View'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text('Something went wrong!'),
        ),
      ),
    );
  }
}