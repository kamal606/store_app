import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/fonts/app_font.dart';
import 'package:store_app/core/utils/go_router.dart';
import 'package:store_app/core/widgets/custom_elvated_button.dart';

class SectionButtonLoginOrRegister extends StatelessWidget {
  const SectionButtonLoginOrRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width - 100.h,
          height: 35.h,
          child: CustomElvatedButton(
            onPressed: () {},
            title: "Login or Register",
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width - 100.h,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: BorderSide(width: 2.h, color: AppColor.jGDark),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.r),
              ),
            ),
            onPressed: () {
              context.replace(AppRouter.chooseLanguageView);
            },
            child: Text(
              "Guest Login",
              style: AppFonts.semiBold_16.copyWith(color: AppColor.white),
            ),
          ),
        )
      ],
    );
  }
}
