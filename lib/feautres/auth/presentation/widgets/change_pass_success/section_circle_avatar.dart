import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/classes/icons.dart';
import 'package:store_app/core/color/app_color.dart';

class SectionCircleAvatarChangePasswordSuccess extends StatelessWidget {
  const SectionCircleAvatarChangePasswordSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          backgroundColor: AppColor.white.withAlpha(160),
          radius: 80.h,
        ),
        CircleAvatar(
          backgroundColor: AppColor.grey.withAlpha(160),
          radius: 70.h,
        ),
        CircleAvatar(
          backgroundColor: AppColor.darkTheme.withAlpha(140),
          radius: 60.h,
        ),
        Icon(
          AppIcon.check,
          color: AppColor.white,
          size: 70.h,
        ),
      ],
    );
  }
}
