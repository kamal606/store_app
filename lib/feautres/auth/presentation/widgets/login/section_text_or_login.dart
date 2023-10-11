import 'package:flutter/material.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/fonts/app_font.dart';

class SectionTextOrLoginWith extends StatelessWidget {
  const SectionTextOrLoginWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Expanded(
          child: Divider(
            endIndent: 10,
            color: AppColor.white,
          ),
        ),
        Text(
          "Or Login With",
          style: AppFonts.semiBold_14.copyWith(color: AppColor.background),
        ),
        const Expanded(
          child: Divider(
            indent: 10,
            color: AppColor.white,
          ),
        ),
      ],
    );
  }
}
