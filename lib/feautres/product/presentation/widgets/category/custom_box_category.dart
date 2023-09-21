import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/fonts/app_font.dart';

class CustomBoxCategory extends StatelessWidget {
  const CustomBoxCategory({
    Key? key,
    required this.image,
    required this.title,
    this.colorbox,
  }) : super(key: key);

  final String image;
  final String title;
  final Color? colorbox;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 96.h,
      width: 48.h,
      child: Column(
        children: [
          Container(
            width: 48.h,
            height: 48.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: colorbox,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  image,
                  color: AppColor.white,
                  height: 28.h,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: AppFonts.font_12,
          ),
        ],
      ),
    );
  }
}
