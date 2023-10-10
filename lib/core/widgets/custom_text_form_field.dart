import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../color/app_color.dart';
import '../fonts/app_font.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    this.prefixIcon,
    this.onPressedPrefixIcon,
    this.color,
    this.onChanged,
    this.focusNode,
  });
  final String hint;
  final IconData? prefixIcon;
  final void Function()? onPressedPrefixIcon;
  final void Function(String)? onChanged;
  final Color? color;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 10.w,
      child: TextFormField(
        focusNode: focusNode,
        onChanged: onChanged,
        cursorColor: AppColor.blacK,
        decoration: InputDecoration(
          prefixIcon: IconButton(
            onPressed: onPressedPrefixIcon,
            icon: FaIcon(
              prefixIcon,
              size: 20.h,
            ),
            color: AppColor.jGDark,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(25.r),
            ),
            borderSide: const BorderSide(color: AppColor.lightGrey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(25.r),
            ),
            borderSide: const BorderSide(color: AppColor.lightGrey),
          ),
          fillColor: color ?? AppColor.formField,
          filled: true,
          contentPadding: EdgeInsets.symmetric(vertical: 5.h),
          hintText: hint,
          hintStyle: AppFonts.regular_13.copyWith(
            color: AppColor.grey,
          ),
        ),
      ),
    );
  }
}
