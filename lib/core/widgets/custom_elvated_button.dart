import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:store_app/core/color/app_color.dart';
import '../fonts/app_font.dart';

class CustomElvatedButton extends StatelessWidget {
  const CustomElvatedButton(
      {super.key,
      required this.onPressed,
      this.title,
      this.titleAction,
      this.imageAction,
      this.isAction = false});
  final void Function()? onPressed;
  final String? title;
  final String? titleAction;
  final String? imageAction;
  final bool isAction;
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
        child: isAction
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    titleAction ?? "",
                    style: AppFonts.semiBold_16,
                  ),
                  CircleAvatar(
                    foregroundImage: AssetImage(
                      imageAction!,
                    ),
                  ),
                ],
              )
            : Text(
                title ?? "",
                style: AppFonts.semiBold_16,
              ),
      ),
    );
  }
}
