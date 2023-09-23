import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/core/color/app_color.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.action,
    this.onPressedLeading,
    required this.iconLeading,
  });
  final Widget? action;

  final Function()? onPressedLeading;
  final IconData iconLeading;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: EdgeInsets.only(left: 15.h),
        child: CircleAvatar(
          backgroundColor: AppColor.blacK,
          child: IconButton(
            onPressed: onPressedLeading,
            icon: FaIcon(
              iconLeading,
              size: 15.h,
              color: AppColor.white,
            ),
          ),
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 15.h),
          child: action,
        ),
      ],
      backgroundColor: AppColor.white,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
