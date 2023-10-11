import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/classes/icons.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/widgets/custom_text_form_field.dart';
import 'package:store_app/generated/l10n.dart';

class SectionTextFormFieldSignUp extends StatelessWidget {
  const SectionTextFormFieldSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          prefixIcon: AppIcon.email,
          fillColor: AppColor.lightGrey.withAlpha(170),
          isRaiusEnabled: false,
          isRaiusfocused: false,
          hint: S.of(context).emailAddress,
        ),
        SizedBox(
          height: 10.h,
        ),
        CustomTextFormField(
          prefixIcon: AppIcon.password,
          fillColor: AppColor.lightGrey.withAlpha(170),
          isRaiusEnabled: false,
          isRaiusfocused: false,
          hint: S.of(context).password,
        ),
        SizedBox(
          height: 10.h,
        ),
        CustomTextFormField(
          prefixIcon: AppIcon.password,
          fillColor: AppColor.lightGrey.withAlpha(170),
          isRaiusEnabled: false,
          isRaiusfocused: false,
          hint: S.of(context).confirmPassword,
        ),
      ],
    );
  }
}
