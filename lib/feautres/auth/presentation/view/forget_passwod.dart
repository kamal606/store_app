import 'package:flutter/material.dart';
import 'package:store_app/feautres/auth/presentation/widgets/forget_password/body_forget_password.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ForgetPasswordViewBody(),
    );
  }
}
