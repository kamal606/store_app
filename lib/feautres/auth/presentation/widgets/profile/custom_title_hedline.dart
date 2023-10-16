import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/fonts/app_font.dart';

class CustomTitleHeadlines extends StatelessWidget {
  const CustomTitleHeadlines(
      {super.key, required this.titleHedline, this.onPressedIcon});
  final String titleHedline;
  final Function()? onPressedIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 20.h),
      height: 30.h,
      width: double.infinity,
      color: AppColor.lightGrey,
      child: Text(
        titleHedline,
        style: AppFonts.bold_16,
      ),
    );
  }
}
