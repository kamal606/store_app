import 'package:flutter/material.dart';
import 'package:store_app/core/fonts/app_font.dart';

class SectionTextWelcomeLogin extends StatelessWidget {
  const SectionTextWelcomeLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(text: "Welcome,\n", style: AppFonts.bold_25),
          TextSpan(text: " Glad to see you!", style: AppFonts.regular_25),
        ],
      ),
    );
  }
}
