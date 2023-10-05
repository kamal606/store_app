import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/classes/icons.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/widgets/custom_text_form_field.dart';

class SectionFormFieldAndDeleteAll extends StatelessWidget {
  const SectionFormFieldAndDeleteAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextFormField(
            hint: "Search...",
            prefixIcon: AppIcon.search,
            onPressed: () {},
            color: AppColor.white,
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              AppIcon.trash,
              size: 22.h,
            ))
      ],
    );
  }
}
