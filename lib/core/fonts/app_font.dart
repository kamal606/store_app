import 'package:flutter/material.dart';
import 'package:store_app/core/color/app_color.dart';

class AppFonts {
  static double _scaledFontSize(double fontSize, BuildContext context) {
    final double scaleFactor = MediaQuery.of(context).size.shortestSide / 360.0;
    return fontSize * scaleFactor;
  }

  static TextStyle headline1(BuildContext context) => TextStyle(
      fontSize: _scaledFontSize(34, context),
      fontWeight: FontWeight.bold,
      color: AppColor.blacK);
  static TextStyle headline2(BuildContext context) => TextStyle(
      fontSize: _scaledFontSize(24, context),
      fontWeight: FontWeight.w600,
      color: AppColor.blacK);
  static TextStyle headline3(BuildContext context) => TextStyle(
      fontSize: _scaledFontSize(18, context),
      fontWeight: FontWeight.w600,
      color: AppColor.blacK);
  static TextStyle semiblod_16px(BuildContext context) => TextStyle(
      fontSize: _scaledFontSize(16, context),
      fontWeight: FontWeight.w600,
      color: AppColor.blacK);
  static TextStyle regular_16px(BuildContext context) => TextStyle(
      fontSize: _scaledFontSize(16, context),
      fontWeight: FontWeight.w400,
      color: AppColor.blacK);
  static TextStyle description(BuildContext context) => TextStyle(
      fontSize: _scaledFontSize(14, context),
      fontWeight: FontWeight.w400,
      color: AppColor.blacK);
  static TextStyle medium_14px(BuildContext context) => TextStyle(
      fontSize: _scaledFontSize(14, context),
      fontWeight: FontWeight.w500,
      color: AppColor.blacK);
  static TextStyle regular_11px(BuildContext context) => TextStyle(
      fontSize: _scaledFontSize(11, context),
      fontWeight: FontWeight.w400,
      color: AppColor.grey);
}