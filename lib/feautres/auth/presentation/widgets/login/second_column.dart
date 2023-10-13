import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/core/utils/go_router.dart';
import 'package:store_app/feautres/auth/presentation/widgets/shared_widget/custom_have_an_account.dart';
import 'package:store_app/generated/l10n.dart';

class SecondCoulmnLogin extends StatelessWidget {
  const SecondCoulmnLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomBottomHaveAnAccount(
          title: S.of(context).dontHaveAccount,
          titleButton: S.of(context).signUpNow,
          onPressed: () {
            context.replace(AppRouter.signUp);
          },
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}
