import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/core/color/app_color.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.action1,
    this.action2,
  });
  final IconData? action1;
  final IconData? action2;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        SizedBox(
          width: 80.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FaIcon(
                action1,
                color: AppColor.blacK,
                size: 20.h,
              ),
              FaIcon(
                action2,
                color: AppColor.blacK,
                size: 20.h,
              ),
            ],
          ),
        )
      ],
      backgroundColor: AppColor.white,
      elevation: 0.5,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
