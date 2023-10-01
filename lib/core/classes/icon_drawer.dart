import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/classes/icons.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/fonts/app_font.dart';

class ItemsDrawer {
  final IconData nameIcon;
  final String title;
  TextStyle? sizedFont;
  double? sizedIcon;
  Color? colorIcon;

  ItemsDrawer(
      {required this.nameIcon,
      required this.title,
      TextStyle? sizedFont,
      double? sizedIcon,
      Color? colorIcon})
      : sizedFont = sizedFont ?? AppFonts.bold_16,
        sizedIcon = sizedIcon ?? 18.h,
        colorIcon = colorIcon ?? AppColor.darkGrey;

  static List<ItemsDrawer> itemsDrawer = [
    ItemsDrawer(nameIcon: AppIcon.home, title: "Home"),
    ItemsDrawer(nameIcon: AppIcon.profile, title: "Profile"),
    ItemsDrawer(nameIcon: AppIcon.settings, title: "Settings"),
    ItemsDrawer(nameIcon: AppIcon.about, title: "About"),
  ];
}
