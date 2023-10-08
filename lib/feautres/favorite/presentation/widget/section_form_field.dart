import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/classes/icons.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/widgets/custom_text_form_field.dart';
import 'package:store_app/generated/l10n.dart';

class SectionFormFieldAndDeleteAllFavoriteAndCart extends StatelessWidget {
  const SectionFormFieldAndDeleteAllFavoriteAndCart(
      {super.key, this.onChanged, this.onPressedIconDelete});
  final Function(String)? onChanged;
  final Function()? onPressedIconDelete;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextFormField(
            hint: S.of(context).Search,
            prefixIcon: AppIcon.search,
            color: AppColor.white,
            onChanged: onChanged,
          ),
        ),
        IconButton(
            onPressed: onPressedIconDelete,
            icon: Icon(
              AppIcon.trash,
              size: 22.h,
              color: AppColor.jGDark,
            ))
      ],
    );
  }
}
