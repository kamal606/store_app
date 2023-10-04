import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/color/app_color.dart';
import '../fonts/app_font.dart';

class CustomElvatedButton extends StatelessWidget {
  const CustomElvatedButton(
      {super.key, required this.onPressed, required this.title});
  final void Function()? onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3.h,
      shadowColor: AppColor.darkGrey,
      borderRadius: BorderRadius.circular(30.r),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 10.h,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.r)),
        ),
        child: Text(
          title,
          style: AppFonts.semiBold_16,
        ),
      ),
    );
  }
}
