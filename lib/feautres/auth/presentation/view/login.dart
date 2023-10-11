import 'package:flutter/material.dart';
import 'package:store_app/feautres/auth/presentation/widgets/login/body_login_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginViewBody(),
    );
  }
}
