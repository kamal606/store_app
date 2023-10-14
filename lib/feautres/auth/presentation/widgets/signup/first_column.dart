import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/function/toast_flutter.dart';
import 'package:store_app/core/utils/error_display.dart';
import 'package:store_app/core/utils/go_router.dart';
import 'package:store_app/feautres/auth/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:store_app/feautres/auth/presentation/widgets/shared_widget/custom_facebook_or_gmail.dart';
import 'package:store_app/feautres/auth/presentation/widgets/shared_widget/custom_text_or_with.dart';
import 'package:store_app/feautres/auth/presentation/widgets/shared_widget/custom_text_title_auth.dart';
import 'package:store_app/feautres/auth/presentation/widgets/signup/sction_button.dart';
import 'package:store_app/feautres/auth/presentation/widgets/signup/section_text_form_field.dart';
import 'package:store_app/generated/l10n.dart';

class FirstColumnSignUp extends StatelessWidget {
  const FirstColumnSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is AuthSuccess) {
              context.push(AppRouter.homeView);
            }
            if (state is AuthFailure && !isErrorDisplayed) {
              toast(message: state.errorAuth, color: AppColor.erorr);
              isErrorDisplayed = true;
            }
          },
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // section text welcom
                CustomTextTitleAuth(
                  textSpan1: S.of(context).createAccount,
                  textSpan2: S.of(context).toGetStarted,
                ),

                SizedBox(
                  height: 25.h,
                ),

                // section TextFormField
                const SectionTextFormFieldSignUp(),

                SizedBox(
                  height: 30.h,
                ),

                // section button
                const SectionButtonSignUp(),

                SizedBox(
                  height: 50.h,
                ),

                // section Text or login with
                CustomTextOrWith(title: S.of(context).orSignUp),

                SizedBox(
                  height: 25.h,
                ),

                // section google or facebook
                CustomFacebookOrGmail(
                  onPressedFacbook: () {},
                  onPressedGmail: () {},
                ),
              ],
            );
          },
        );
      },
    );
  }
}
