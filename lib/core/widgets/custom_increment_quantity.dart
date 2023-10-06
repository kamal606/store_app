import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/core/classes/icons.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/fonts/app_font.dart';

class CustomIncrementQuantity extends StatelessWidget {
  const CustomIncrementQuantity({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3.h,
      shadowColor: AppColor.darkGrey,
      borderRadius: BorderRadius.circular(16.h),
      child: Container(
        width: 90.h,
        height: 28.h,
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        decoration: BoxDecoration(
          color: AppColor.background,
          borderRadius: BorderRadius.circular(16.h),
        ),
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: () {},
                icon: FaIcon(
                  AppIcon.minus,
                  size: 15.h,
                  color: AppColor.blacK,
                ),
              ),
              Text(
                "1",
                style: AppFonts.regular_13.copyWith(color: AppColor.blacK),
              ),
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: () {},
                icon: FaIcon(
                  AppIcon.plus,
                  size: 15.h,
                  color: AppColor.blacK,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
