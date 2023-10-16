import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/classes/icons.dart';
import 'package:store_app/core/fonts/app_font.dart';

class CustomBodyHedline extends StatelessWidget {
  const CustomBodyHedline(
      {super.key, required this.titleBodyHedline, this.onPressed});
  final String titleBodyHedline;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.h),
      height: 30.h,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            titleBodyHedline,
            style: AppFonts.semiBold_14,
          ),
          IconButton(
            onPressed: onPressed,
            icon: Icon(
              AppIcon.angleRight,
              size: 16.h,
            ),
          )
        ],
      ),
    );
  }
}
