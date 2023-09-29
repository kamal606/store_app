import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/fonts/app_font.dart';

class CustomElvatedButton extends StatelessWidget {
  const CustomElvatedButton(
      {super.key, required this.onPressed, required this.title});
  final void Function()? onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(
          horizontal: 30.h,
          vertical: 10.h,
        ),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.h)),
      ),
      child: Text(
        title,
        style: AppFonts.semiBold_16,
      ),
    );
  }
}
