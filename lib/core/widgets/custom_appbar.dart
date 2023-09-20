import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/constant/image_assets.dart';

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
      // leading: Container(
      //   child: Row(
      //     children: [
      //       Text(
      //         "Welcome ",
      //         style: AppFonts.font_14.copyWith(
      //           color: AppColor.blacK,
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      //       Image.asset(
      //         AppAssets.welcome,
      //         width: 25.w,
      //       ),
      //     ],
      //   ),
      // ),
      actions: [
        SizedBox(
          width: 80.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                AppAssets.bell,
                width: 20.r,
              ),
              Image.asset(
                AppAssets.shoppingCart,
                width: 20.r,
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
