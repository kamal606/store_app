import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/classes/icons.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/widgets/custom_text_form_field.dart';
import 'package:store_app/feautres/auth/presentation/bloc/auth_bloc/login_bloc/login_bloc.dart';
import 'package:store_app/generated/l10n.dart';

class SectionTextFormFieldLogin extends StatelessWidget {
  const SectionTextFormFieldLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            return CustomTextFormField(
              errorText: state is LoginEmailFailure ? state.errorEmail : null,
              onChanged: (value) {
                BlocProvider.of<LoginBloc>(context)
                    .add(LoginEmailChangedEvent(email: value));
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
        BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            return CustomTextFormField(
              errorText:
                  state is LoginPasswordFailure ? state.errorPassword : null,
              onChanged: (value) {
                BlocProvider.of<LoginBloc>(context)
                    .add(LoginPasswordChangedEvent(password: value));
              },
              prefixIcon: AppIcon.password,
              suffixIcon: AppIcon.eyeLock,
              fillColor: AppColor.lightGrey.withAlpha(170),
              isRaiusEnabled: false,
              isRaiusfocused: false,
              hint: S.of(context).password,
            );
          },
        ),
      ],
    );
  }
}
