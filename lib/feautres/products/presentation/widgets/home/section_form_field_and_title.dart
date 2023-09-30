import 'package:flutter/material.dart';
import 'package:store_app/generated/l10n.dart';
import '../../../../../core/color/app_color.dart';
import '../../../../../core/fonts/app_font.dart';
import '../../../../../core/classes/icons.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';

class SectionTitleWithFormField extends StatelessWidget {
  const SectionTitleWithFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ListTile(
          title: Text(
            "${S.of(context).welcome} ‌🙋",
            style: AppFonts.bold_14.copyWith(color: AppColor.white),
          ),
          subtitle: Text(
            S.of(context).ourEcommerceApp,
            style: AppFonts.semiBold_12.copyWith(color: AppColor.white),
          ),
        ),
        CutomTextFormField(
          hint: S.of(context).searchProductName,
          prefixIcon: AppIcon.search,
          onPressed: () {},
        ),
      ],
    );
  }
}
