import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/color/app_color.dart';

class CustomIconLeftOrRight extends StatelessWidget {
  const CustomIconLeftOrRight(
      {super.key,
      this.onPressed,
      required this.image,
      this.colorCircleAvatar,
      this.colorImage,
      this.radiusCircle,
      this.heightIcon});
  final Function()? onPressed;
  final String image;
  final Color? colorCircleAvatar;
  final double? radiusCircle;
  final Color? colorImage;
  final double? heightIcon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: CircleAvatar(
        radius: radiusCircle ?? 26.h,
        backgroundColor: colorCircleAvatar ?? AppColor.blacK,
        child: Image.asset(
          image,
          height: heightIcon ?? 12.h,
          color: colorImage ?? AppColor.white,
        ),
      ),
    );
  }
}
