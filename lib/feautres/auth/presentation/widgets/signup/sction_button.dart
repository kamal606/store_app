import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/widgets/custom_elvated_button.dart';
import 'package:store_app/feautres/auth/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:store_app/generated/l10n.dart';

class SectionButtonSignUp extends StatelessWidget {
  const SectionButtonSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return SizedBox(
          height: 35.h,
          width: double.infinity,
          child: CustomElvatedButton(
            isTitle: state is AuthLoading ? false : true,
            isRadius: false,
            colorTitle: AppColor.blacK,
            title: S.of(context).signUp,
            backgroundColor: AppColor.white,
            onPressed: () {
              BlocProvider.of<AuthBloc>(context).add(AuthSignUpEvent());
            },
          ),
        );
      },
    );
  }
}
