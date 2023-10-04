import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'package:store_app/core/classes/onbording.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/function/check_local_arabic.dart';
import 'package:store_app/core/utils/go_router.dart';
import 'package:store_app/core/widgets/custom_icon_left_right.dart';

class SectionBottom extends StatelessWidget {
  const SectionBottom(
      {super.key, required this.index, required this.pageController});
  final int index;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Row(
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
                    index == this.index ? AppColor.darkTheme : AppColor.grey,
              ),
            );
          },
        ),
        const Spacer(),
        CustomIconLeftOrRight(
          isAppbar: false,
          onPressed: () {
            pageController.animateToPage(index + 1,
                duration: const Duration(seconds: 1), curve: Curves.easeInOut);

            if (index >= 2) {
              context.replace(AppRouter.homeView);
            }
          },
        )
      ],
    );
  }
}
