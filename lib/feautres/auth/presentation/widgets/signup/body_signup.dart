import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/function/toast_flutter.dart';
import 'package:store_app/core/utils/go_router.dart';
import 'package:store_app/feautres/auth/presentation/bloc/auth_bloc/sign_up_bloc/sign_up_bloc.dart';
import 'package:store_app/feautres/auth/presentation/widgets/signup/first_column.dart';
import 'package:store_app/feautres/auth/presentation/widgets/signup/second_column.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpBloc, SignUpState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          context.replace(AppRouter.homeView);
        }
        if (state is SignUpFailure) {
          toast(message: state.errorAuth, color: AppColor.erorr);
        }
      },
      builder: (context, state) {
        return CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
                child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  decoration:
                      BoxDecoration(gradient: AppColor.linearGradient()),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: AbsorbPointer(
                      absorbing: state is SignUpLoading ? true : false,
                      child: const Column(
                        children: [
                          Expanded(
                            flex: 8,
                            child:
                                FirstColumnSignUp(), //all body without have an account
                          ),
                          Expanded(
                            flex: 1,
                            child:
                                SecondCoulmnSignUp(), //inside it have an account jsut
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                state is SignUpLoading
                    ? Container(
                        height: MediaQuery.of(context).size.height,
                        color: AppColor.grey.withAlpha(80),
                      )
                    : Container()
              ],
            )),
          ],
        );
      },
    );
  }
}
