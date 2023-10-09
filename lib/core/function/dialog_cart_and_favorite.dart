import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/fonts/app_font.dart';
import 'package:store_app/core/widgets/custom_elvated_button.dart';
import 'package:store_app/generated/l10n.dart';

Future<void> customDialogDeleteCartAndFavorite(
    {required BuildContext context,
    required Function()? onPressedCancel,
    required Function()? onPressedAgree,
    required String title}) async {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            title,
            style: AppFonts.bold_18,
          ),
          actions: [
            SizedBox(
              width: 100.h,
              child: CustomElvatedButton(
                backgroundColor: AppColor.erorr,
                onPressed: onPressedCancel,
                title: S.of(context).cancel,
                fontTitle: AppFonts.bold_13,
              ),
            ),
            SizedBox(
              width: 100.h,
              child: CustomElvatedButton(
                backgroundColor: AppColor.jGDark,
                onPressed: onPressedAgree,
                title: S.of(context).agree,
                fontTitle: AppFonts.bold_13,
              ),
            ),
          ],
        );
      });
}
