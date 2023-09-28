import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/fonts/app_font.dart';
import 'package:store_app/core/utils/icons.dart';
import 'package:store_app/core/widgets/custom_text_form_field.dart';

class SectionTitleWithFormField extends StatelessWidget {
  const SectionTitleWithFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ListTile(
          title: Text(
            "Welcome,",
            style: AppFonts.bold_14.copyWith(color: AppColor.white),
          ),
          subtitle: Text(
            "Our Ecommerce App",
            style: AppFonts.semiBold_12.copyWith(color: AppColor.white),
          ),
        ),
        CutomTextFormField(
          hint: "Search Product Name",
          prefixIcon: AppIcon.search,
          onPressed: () {},
        ),
        SizedBox(
          height: 20.h,
        )
      ],
    );
  }
}
