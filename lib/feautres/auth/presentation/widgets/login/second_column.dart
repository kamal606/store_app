import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/feautres/auth/presentation/widgets/login/section_have_an_account.dart';

class SecondCoulmn extends StatelessWidget {
  const SecondCoulmn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SectionBottomHaveAnAccount(
          title: "Don't have an account?",
          titleButton: "Sign Up Now",
          onPressed: () {},
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}
