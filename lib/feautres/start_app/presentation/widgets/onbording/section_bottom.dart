import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';

import 'package:store_app/core/classes/onbording.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/fonts/app_font.dart';
import 'package:store_app/core/function/check_local_arabic.dart';
import 'package:store_app/core/utils/go_router.dart';
import 'package:store_app/core/widgets/custom_icon_left_right.dart';
import 'package:store_app/feautres/start_app/data/local_data_source/save_start_app.dart';
import 'package:store_app/generated/l10n.dart';

class SectionBottom extends StatelessWidget {
  const SectionBottom(
      {super.key, required this.index, required this.pageController});
  final int index;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ...List.generate(
              ClassOnBording.onBordingList(context).length,
              (index) {
                return Padding(
                  padding: EdgeInsets.only(
                    right: isArabicLocale() ? 0 : 4.h,
                    left: isArabicLocale() ? 4.h : 0,
                  ),
                  child: CircleAvatar(
                    radius: 4.h,
                    backgroundColor:
                        index == this.index ? AppColor.jGLight : AppColor.grey,
                  ),
                );
              },
            ),
          ],
        ),
        TextButton(
          onPressed: () async {
            Box box = await SaveStartViewAppLocal.openBox();
            await SaveStartViewAppLocal.onBording(box);
            if (!context.mounted) return;
            context.replace(AppRouter.homeView);
          },
          child: Text(
            S.of(context).skip,
            style: AppFonts.bold_18.copyWith(color: AppColor.jGLight),
          ),
        ),
        CustomIconLeftOrRight(
          isCircleOnLeading: true,
          isAppbar: false,
          onPressed: () async {
            pageController.animateToPage(index + 1,
                duration: const Duration(seconds: 1), curve: Curves.easeInOut);

            if (index >= 2) {
              Box box = await SaveStartViewAppLocal.openBox();
              await SaveStartViewAppLocal.onBording(box);
              if (!context.mounted) return;
              context.replace(AppRouter.homeView);
            }
          },
        )
      ],
    );
  }
}
