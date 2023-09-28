import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/classes/icon_bottom_nav_bar.dart';
import '../../../../../core/classes/image_assets.dart';
import '../../../../../core/color/app_color.dart';
import '../../../../../core/fonts/app_font.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.h,
      padding: EdgeInsets.symmetric(horizontal: 30.h),
      decoration: BoxDecoration(
          color: AppColor.white,
          boxShadow: [
            BoxShadow(
              color: AppColor.grey,
              blurRadius: 5.h,
              offset: Offset(0, -1.h),
            )
          ],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.h), topRight: Radius.circular(16.h))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(children: [
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                Container(
                  padding: EdgeInsets.only(right: 4.h),
                  alignment: Alignment.centerRight,
                  height: 40..h,
                  width: 80.h,
                  decoration: BoxDecoration(
                      color: AppColor.lightGrey,
                      borderRadius: BorderRadius.circular(16.h)),
                  child: Text(
                    "Home",
                    style: AppFonts.bold_13,
                  ),
                ),
                CircleAvatar(
                    radius: 16.h,
                    backgroundColor: AppColor.blacK,
                    child: Image.asset(
                      AppAssets.home,
                      height: 15.h,
                    )),
              ],
            )
          ]),
          ...List.generate(navBarIcon.length, (i) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Image.asset(
                navBarIcon[i].nameIcon,
                height: 18.h,
              ),
            );
          })
        ],
      ),
    );
  }
}
