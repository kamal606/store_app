import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/widgets/custom_icon_left_right.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      this.onPressedLeading,
      this.onPressedAction,
      this.iconAction});
  final void Function()? onPressedLeading;
  final void Function()? onPressedAction;

  final IconData? iconAction;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: AppBar(
        leadingWidth: 40.h,
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(color: Colors.transparent),
        ),
        leading: InkWell(
          onTap: onPressedLeading,
          child: const CustomIconLeftOrRight(isAppbar: true),
        ),
        actions: [
          Material(
            elevation: 3.h,
            shape: const CircleBorder(),
            shadowColor: AppColor.darkGrey,
            child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: onPressedAction,
                icon: CircleAvatar(
                  backgroundColor:
                      Theme.of(context).colorScheme.primaryContainer,
                  radius: 40,
                  child: Icon(
                    iconAction,
                    size: 16.h,
                    color: Theme.of(context).colorScheme.surface,
                  ),
                )),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
