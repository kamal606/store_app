import 'package:flutter/material.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/fonts/app_font.dart';

class SectionBottomHaveAnAccount extends StatelessWidget {
  const SectionBottomHaveAnAccount(
      {super.key,
      required this.title,
      this.onPressed,
      required this.titleButton});
  final String title;
  final String titleButton;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: AppFonts.regular_14.copyWith(color: AppColor.white),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            titleButton,
            style: AppFonts.bold_16.copyWith(
                color: AppColor.white, decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}
