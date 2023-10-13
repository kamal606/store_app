import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/utils/go_router.dart';
import 'package:store_app/core/widgets/custom_elvated_button.dart';
import 'package:store_app/generated/l10n.dart';

class SectionButtonChangePasswordSuccess extends StatelessWidget {
  const SectionButtonChangePasswordSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.h,
      width: double.infinity,
      child: CustomElvatedButton(
        isRadius: false,
        colorTitle: AppColor.blacK,
        title: S.of(context).continuee,
        backgroundColor: AppColor.white,
        onPressed: () {
          context.replace(AppRouter.login);
        },
      ),
    );
  }
}
