import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/color/app_color.dart';

class CustomContainerLoginFacebookOrGoogle extends StatelessWidget {
  const CustomContainerLoginFacebookOrGoogle(
      {super.key, this.onTap, required this.image});
  final Function()? onTap;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          height: 40.h,
          decoration: BoxDecoration(
              color: AppColor.white, borderRadius: BorderRadius.circular(6.r)),
          child: Image.asset(
            image,
            height: 20.h,
          ),
        ),
      ),
    );
  }
}
