import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:store_app/core/color/app_color.dart';

class SectionImageOnBording extends StatelessWidget {
  const SectionImageOnBording(
      {super.key, required this.heightContainer, required this.image});
  final double heightContainer;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightContainer,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        color: AppColor.blue,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.h),
          topRight: Radius.circular(30.h),
          bottomLeft: Radius.circular(30.h),
          bottomRight: Radius.circular(120.h),
        ),
      ),
    );
  }
}
