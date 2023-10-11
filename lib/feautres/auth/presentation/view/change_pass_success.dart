import 'package:flutter/material.dart';
import 'package:store_app/feautres/auth/presentation/widgets/change_pass_success/body_change_pass_success.dart';

class SuccessChangePasswordView extends StatelessWidget {
  const SuccessChangePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SuccessChangePasswordViewBody(),
    );
  }
}
