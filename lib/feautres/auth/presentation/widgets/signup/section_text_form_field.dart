import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/classes/icons.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/widgets/custom_text_form_field.dart';
import 'package:store_app/feautres/auth/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:store_app/generated/l10n.dart';

class SectionTextFormFieldSignUp extends StatelessWidget {
  const SectionTextFormFieldSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return CustomTextFormField(
              errorText: state is EmailFailure ? (state).errorEmail : null,
              onChanged: (value) {
                BlocProvider.of<AuthBloc>(context)
                    .add(EmailChangedEvent(email: value));
              },
              prefixIcon: AppIcon.email,
              fillColor: AppColor.lightGrey.withAlpha(170),
              isRaiusEnabled: false,
              isRaiusfocused: false,
              hint: S.of(context).emailAddress,
            );
          },
        ),
        SizedBox(
          height: 10.h,
        ),
        BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return CustomTextFormField(
              errorText:
                  state is PasswordFailure ? (state).errorPassword : null,
              onChanged: (value) {
                BlocProvider.of<AuthBloc>(context)
                    .add(PasswordChangedEvent(password: value));
              },
              prefixIcon: AppIcon.password,
              fillColor: AppColor.lightGrey.withAlpha(170),
              isRaiusEnabled: false,
              isRaiusfocused: false,
              hint: S.of(context).password,
            );
          },
        ),
        SizedBox(
          height: 10.h,
        ),
        BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return CustomTextFormField(
              errorText: state is ConfirmPasswordFailure
                  ? (state).errorConfirmPassword
                  : null,
              onChanged: (value) {
                BlocProvider.of<AuthBloc>(context)
                    .add(ConfirmPasswordChangedEvent(confirmPassword: value));
              },
              prefixIcon: AppIcon.password,
              fillColor: AppColor.lightGrey.withAlpha(170),
              isRaiusEnabled: false,
              isRaiusfocused: false,
              hint: S.of(context).confirmPassword,
            );
          },
        ),
      ],
    );
  }
}
