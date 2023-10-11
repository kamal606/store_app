import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/feautres/auth/presentation/widgets/change_pass_success/section_button.dart';
import 'package:store_app/feautres/auth/presentation/widgets/change_pass_success/section_circle_avatar.dart';
import 'package:store_app/feautres/auth/presentation/widgets/change_pass_success/section_title.dart';

class SuccessChangePasswordViewBody extends StatelessWidget {
  const SuccessChangePasswordViewBody({super.key});

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
                  // section circle avatar
                  const SectionCircleAvatarChangePasswordSuccess(),

                  SizedBox(
                    height: 30.h,
                  ),

                  // section title
                  const SectionTitleChangePasswordSuccess(),

                  SizedBox(
                    height: 30.h,
                  ),

                  // section buuton
                  const SectionButtonChangePasswordSuccess()
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
