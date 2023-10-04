import 'package:flutter/material.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/fonts/app_font.dart';

class SectionTextChooseLanguage extends StatelessWidget {
  const SectionTextChooseLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListTile(
        title: Text(
          "WELCOME",
          style: AppFonts.bold_30.copyWith(color: AppColor.white),
        ),
        subtitle: Text(
          "Let's Get Started",
          style: AppFonts.semiBold_14.copyWith(color: AppColor.lightGrey),
        ),
      ),
    );
  }
}
