import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/fonts/app_font.dart';
import 'package:store_app/core/utils/go_router.dart';
import 'package:store_app/core/widgets/custom_elvated_button.dart';
import 'package:store_app/feautres/start_app/data/local_data_source/save_start_app.dart';

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
            onPressed: () {
              context.replace(AppRouter.login);
            },
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
            onPressed: () async {
              // Box box = await SaveStartViewAppLocal.openBox();
              // await SaveStartViewAppLocal.loginOrRegister(box);
              // if (!context.mounted) return;
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
