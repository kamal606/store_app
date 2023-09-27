import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/core/color/app_color.dart';

class CustomSliverAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomSliverAppBar({
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
    return SliverAppBar(
      flexibleSpace: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  AppColor.blacK,
                  AppColor.grey,
                ],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(0.5, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp)),
      ),
      leading: Padding(
        padding: EdgeInsets.only(left: 15.h),
        child: CircleAvatar(
          backgroundColor: AppColor.white,
          child: IconButton(
            onPressed: onPressedLeading,
            icon: FaIcon(
              iconLeading,
              size: 15.h,
              color: AppColor.blacK,
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
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
