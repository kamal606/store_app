import 'package:flutter/material.dart';
import 'package:store_app/core/constant/route_name.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: RouteName.login),
      builder: (context) => const LoginView(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        "Login",
      )),
    );
  }
}
