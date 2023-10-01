import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/function/check_local_arabic.dart';

class SectionCircleAvatar extends StatelessWidget {
  const SectionCircleAvatar({super.key, required this.isDarkTheme});
  final bool isDarkTheme;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: -30.h,
      top: -60.h,
      child: Stack(
        alignment: isArabicLocale() ? Alignment.topRight : Alignment.topLeft,
        children: [
          CircleAvatar(
            radius: 200.h,
            backgroundColor:
                isDarkTheme ? AppColor.blacK : AppColor.drawerBlueLight,
          ),
          CircleAvatar(
            radius: 180.h,
            backgroundColor: isDarkTheme
                ? AppColor.drawerBlackRegular
                : AppColor.drawerBlueRegular,
          ),
          CircleAvatar(
            radius: 160.h,
            backgroundColor: isDarkTheme
                ? AppColor.drawerBlackLight
                : AppColor.drawerBlueDark,
          ),
        ],
      ),
    );
  }
}
