import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/classes/image_assets.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/fonts/app_font.dart';
import 'package:store_app/feautres/auth/presentation/widgets/forget_password/section_button.dart';
import 'package:store_app/feautres/auth/presentation/widgets/forget_password/section_form_field.dart';
import 'package:store_app/feautres/auth/presentation/widgets/shared_widget/custom_text_title_auth.dart';
import 'package:store_app/generated/l10n.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(gradient: AppColor.linearGradient()),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppAssets.lock,
                    height: 80.h,
                    width: 80.h,
                  ),

                  SizedBox(
                    height: 25.h,
                  ),

                  // section text welcom
                  CustomTextTitleAuth(
                    fontSpan1: AppFonts.bold_18.copyWith(fontFamily: "Cairo"),
                    fontSpan2:
                        AppFonts.regular_14.copyWith(fontFamily: "Cairo"),
                    textSpan1: S.of(context).forgetPass,
                    textSpan2: S.of(context).titleForgetpassword,
                  ),

                  SizedBox(
                    height: 25.h,
                  ),

                  // section TextFormField
                  const SectionTextFormFieldForgetPassword(),

                  SizedBox(
                    height: 30.h,
                  ),

                  // section button
                  const SectionButtonForgetPassword(),

                  // section have an account
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
