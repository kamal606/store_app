import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/core/classes/icons.dart';
import 'package:store_app/core/fonts/app_font.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key, required this.currentIndex, this.onTap});
  final int currentIndex;
  final Function(int)? onTap;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedLabelStyle: AppFonts.regular_11,
      fixedColor: Theme.of(context)
          .bottomNavigationBarTheme
          .selectedLabelStyle!
          .backgroundColor,
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
      elevation: 2.h,
      type: BottomNavigationBarType.fixed,
    );
  }
}
