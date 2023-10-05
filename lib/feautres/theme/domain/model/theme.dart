import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:store_app/core/color/app_color.dart';

part 'theme.g.dart';

@HiveType(typeId: 2)
enum AppTheme {
  @HiveField(0)
  dark("Dark Mode"),
  @HiveField(2)
  light("Light Mode");

  const AppTheme(this.name);
  final String name;
}

Map<AppTheme, ThemeData> theme = {
  AppTheme.dark: ThemeData(
    fontFamily: "Cairo",
    brightness: Brightness.dark,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(backgroundColor: AppColor.white),
    ),
    colorScheme: const ColorScheme.dark(
      surface: AppColor.white,
      primaryContainer: AppColor.darkTheme,
      secondary: AppColor.darkGrey,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(color: AppColor.white),
      unselectedIconTheme: IconThemeData(color: AppColor.grey),
      selectedLabelStyle: TextStyle(backgroundColor: AppColor.white),
      backgroundColor: AppColor.blacK,
    ),
  ),
  AppTheme.light: ThemeData(
    scaffoldBackgroundColor: AppColor.background,
    fontFamily: "Cairo",
    brightness: Brightness.light,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(backgroundColor: AppColor.darkTheme),
    ),
    colorScheme: const ColorScheme.light(
      surface: AppColor.darkTheme,
      primaryContainer: AppColor.white,
      secondary: AppColor.white,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(color: AppColor.darkTheme),
      unselectedIconTheme: IconThemeData(color: AppColor.grey),
      selectedLabelStyle: TextStyle(backgroundColor: AppColor.darkTheme),
    ),
  ),
};
