import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/feautres/auth/presentation/widgets/login/section_button.dart';
import 'package:store_app/feautres/auth/presentation/widgets/login/section_google_or_facebook.dart';
import 'package:store_app/feautres/auth/presentation/widgets/login/section_text_forget_password.dart';
import 'package:store_app/feautres/auth/presentation/widgets/login/section_text_form_field.dart';
import 'package:store_app/feautres/auth/presentation/widgets/login/section_text_or_login.dart';
import 'package:store_app/feautres/auth/presentation/widgets/login/section_text_welcome.dart';

class FirstColumn extends StatelessWidget {
  const FirstColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // section text welcom
        const SectionTextWelcomeLogin(),

        SizedBox(
          height: 25.h,
        ),

        // section TextFormField
        const SectionTextFormFieldLogin(),

        // section Text forget password
        const SectionTextForgetPassword(),

        SizedBox(
          height: 15.h,
        ),

        // section button
        const SectionButtonLogin(),

        SizedBox(
          height: 50.h,
        ),

        // section Text or login with
        const SectionTextOrLoginWith(),

        SizedBox(
          height: 25.h,
        ),

        // section google or facebook
        const SectionGoogleOrFacebook(),

        // section have an account
      ],
    );
  }
}
