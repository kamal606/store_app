import 'package:flutter/material.dart';
import 'package:store_app/core/fonts/app_font.dart';
import 'package:store_app/generated/l10n.dart';

class SectionTitleChangePasswordSuccess extends StatelessWidget {
  const SectionTitleChangePasswordSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
              text: S.of(context).congratulations,
              style: AppFonts.bold_25.copyWith(fontFamily: "Cairo")),
          TextSpan(
              text: S.of(context).changeSuccess,
              style: AppFonts.regular_13.copyWith(fontFamily: "Cairo")),
        ],
      ),
    );
  }
}
