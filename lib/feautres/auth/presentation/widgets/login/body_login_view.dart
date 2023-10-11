import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/feautres/auth/presentation/widgets/login/first_column.dart';
import 'package:store_app/feautres/auth/presentation/widgets/login/second_column.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

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
                    child: FirstColumn(), //all body without have an account
                  ),
                  Expanded(
                    flex: 1,
                    child: SecondCoulmn(), //inside it have an account jsut
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
