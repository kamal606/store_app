import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../color/app_color.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      this.onPressedLeading,
      this.onPressedAction,
      this.iconLeading,
      this.iconAction});
  final void Function()? onPressedLeading;
  final void Function()? onPressedAction;
  final IconData? iconLeading;
  final IconData? iconAction;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        decoration: BoxDecoration(gradient: AppColor.linearGradientAppBar()),
      ),
      leading: IconButton(
        onPressed: onPressedLeading,
        icon: FaIcon(
          iconLeading,
          size: 22.h,
          color: AppColor.background,
        ),
      ),
      actions: [
        IconButton(
            onPressed: onPressedAction,
            icon: FaIcon(
              iconAction,
              size: 18.h,
              color: AppColor.background,
            )),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
