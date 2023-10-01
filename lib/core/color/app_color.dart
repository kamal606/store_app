import 'package:flutter/material.dart';

class AppColor {
  static const Color blacK = Color(0XFF222222);

  static const Color darkGrey = Color(0XFF666666);
  static const Color grey = Color(0XFFAAAAAA);
  static const Color lightGrey = Color.fromARGB(255, 207, 203, 203);
  static const Color blue = Color(0XFF184DAD);

  static const Color formField = Color(0XFFF3F4F5);
  static const Color primary = Color(0XFFDB3022);
  static const Color background = Color.fromARGB(255, 243, 239, 239);
  static const Color white = Color(0XFFFFFFFF);
  static const Color erorr = Color(0XFFF01F0E);
  static const Color darkTheme = Color(0XFF2E2E2E);
  static const Color drawerBlueDark = Color(0XFFB6F0E5);
  static const Color drawerBlueRegular = Color(0XFFCAF3EB);
  static const Color drawerBlueLight = Color(0XFFE1F6F2);
  static const Color drawerBlackDark = Color(0XFF292929);
  static const Color drawerBlackRegular = Color(0XFF3F3F3F);
  static const Color drawerBlackLight = Color(0XFF535353);
  static const Color drawerName = Color(0XFF11AF8E);
  static const Color star = Color(0XFFFFAB07);
  static const Color yellow = Colors.yellow;
  static const Color success = Color(0XFF2AA952);
  static const Color pink = Colors.pink;
  static const Color orange = Colors.orange;
  static const Color purple = Colors.purple;

  //======================= linear gradient ======================
  static LinearGradient linearGradientAppBar() {
    return const LinearGradient(colors: [
      AppColor.blacK,
      AppColor.background,
      AppColor.darkGrey,
    ]);
  }
}
