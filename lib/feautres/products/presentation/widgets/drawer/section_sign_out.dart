import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/classes/icons.dart';
import 'package:store_app/core/color/app_color.dart';

import 'package:store_app/core/fonts/app_font.dart';
import 'package:store_app/generated/l10n.dart';

class SectionSignOut extends StatelessWidget {
  const SectionSignOut({super.key, required this.isDarkTheme});
  final bool isDarkTheme;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            AppIcon.signOut,
            color: isDarkTheme ? AppColor.white : AppColor.darkGrey,
          ),
        ),
        SizedBox(
          width: 40.h,
        ),
        Text(
          S.of(context).signOut,
          style: AppFonts.bold_16,
        )
      ],
    );
  }
}
