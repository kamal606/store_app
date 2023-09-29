import 'package:flutter/material.dart';

class AppColor {
  static const Color blacK = Color(0XFF222222);

  static const Color darkGrey = Color(0XFF666666);
  static const Color grey = Color(0XFFAAAAAA);
  static const Color lightGrey = Color(0XFFEEEEEE);
  static const Color blue = Color(0XFF184DAD);

  static const Color formField = Color(0XFFF3F4F5);
  static const Color primary = Color(0XFFDB3022);
  static const Color background = Color(0XFFEDEDED);
  static const Color white = Color(0XFFFFFFFF);
  static const Color erorr = Color(0XFFF01F0E);
  static const Color darkTheme = Color(0XFF2E2E2E);

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
