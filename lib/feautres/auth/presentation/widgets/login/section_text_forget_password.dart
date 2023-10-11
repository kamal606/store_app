import 'package:flutter/material.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/fonts/app_font.dart';

class SectionTextForgetPassword extends StatelessWidget {
  const SectionTextForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {},
        child: Text(
          "Forget Password?",
          style: AppFonts.bold_13.copyWith(
            color: AppColor.white,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
