import 'package:flutter/material.dart';
import 'package:store_app/feautres/auth/presentation/widgets/signup/body_signup.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignUpViewBody(),
    );
  }
}
