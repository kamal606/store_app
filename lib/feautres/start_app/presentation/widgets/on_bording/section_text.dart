import 'package:flutter/material.dart';

import 'package:store_app/core/fonts/app_font.dart';

class SectionText extends StatelessWidget {
  const SectionText(
      {super.key,
      required this.heightContainer,
      required this.title,
      required this.subtitle});
  final double heightContainer;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppFonts.bold_25,
        ),
        SizedBox(
          height: heightContainer / 16,
        ),
        Text(
          subtitle,
          style: AppFonts.regular_13,
        )
      ],
    );
  }
}
