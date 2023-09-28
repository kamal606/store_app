import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/core/classes/icons.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/fonts/app_font.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key, required this.currentIndex, this.onTap});
  final int currentIndex;
  final Function(int)? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.h),
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
      child: BottomNavigationBar(
        selectedItemColor: AppColor.blacK,
        selectedLabelStyle: AppFonts.regular_11,
        selectedIconTheme: const IconThemeData(color: AppColor.blacK),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              AppIcon.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              AppIcon.cart,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              AppIcon.favorite,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              AppIcon.profile,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: currentIndex,
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
