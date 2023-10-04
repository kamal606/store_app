import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/classes/image_assets.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/function/check_local_arabic.dart';

class CustomIconLeftOrRight extends StatelessWidget {
  const CustomIconLeftOrRight(
      {super.key,
      this.onPressed,
      this.colorCircleAvatar,
      this.colorImage,
      this.heightIcon,
      required this.isAppbar});
  final Function()? onPressed;
  final Color? colorCircleAvatar;
  final Color? colorImage;
  final double? heightIcon;
  final bool isAppbar;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Material(
        elevation: 3.h,
        shape: const CircleBorder(),
        shadowColor: AppColor.darkGrey,
        child: CircleAvatar(
          radius: 26.h,
          backgroundColor:
              colorCircleAvatar ?? Theme.of(context).colorScheme.surface,
          child: Image.asset(
            isArabicLocale()
                ? (isAppbar ? AppAssets.iconRight : AppAssets.iconLeft)
                : (isAppbar ? AppAssets.iconLeft : AppAssets.iconRight),
            height: heightIcon ?? 13.h,
            color: colorImage ?? Theme.of(context).colorScheme.primaryContainer,
          ),
        ),
      ),
    );
  }
}
