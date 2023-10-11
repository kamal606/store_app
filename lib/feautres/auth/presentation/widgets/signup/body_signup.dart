import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/feautres/auth/presentation/widgets/signup/first_column.dart';
import 'package:store_app/feautres/auth/presentation/widgets/signup/second_column.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

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
      ],
    );
  }
}
