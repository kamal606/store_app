import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/feautres/auth/presentation/widgets/login/section_button.dart';
import 'package:store_app/feautres/auth/presentation/widgets/shared_widget/custom_facebook_or_gmail.dart';
import 'package:store_app/feautres/auth/presentation/widgets/login/section_text_forget_password.dart';
import 'package:store_app/feautres/auth/presentation/widgets/login/section_text_form_field.dart';
import 'package:store_app/feautres/auth/presentation/widgets/shared_widget/custom_text_or_with.dart';
import 'package:store_app/feautres/auth/presentation/widgets/shared_widget/custom_text_title_auth.dart';
import 'package:store_app/generated/l10n.dart';

class FirstColumnLogin extends StatelessWidget {
  const FirstColumnLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // section text welcom
        CustomTextTitleAuth(
          textSpan1: S.of(context).welcomeLogin,
          textSpan2: S.of(context).glad,
        ),

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
        CustomTextOrWith(title: S.of(context).orLogin),

        SizedBox(
          height: 25.h,
        ),

        // section google or facebook
        CustomFacebookOrGmail(
          onPressedFacbook: () {},
          onPressedGmail: () {},
        ),

        // section have an account
      ],
    );
  }
}