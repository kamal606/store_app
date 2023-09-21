import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/fonts/app_font.dart';

class CutomTextFormField extends StatelessWidget {
  const CutomTextFormField({
    super.key,
    required this.hint,
    this.suffixIcon,
    this.onPressed,
  });
  final String hint;
  final IconData? suffixIcon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 10.w,
      child: TextFormField(
        cursorColor: AppColor.blacK,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: onPressed,
            icon: Icon(
              suffixIcon,
              size: 20.h,
            ),
            color: AppColor.blacK,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.r),
            ),
            borderSide: BorderSide.none,
          ),
          fillColor: AppColor.background,
          filled: true,
          contentPadding:
              EdgeInsets.symmetric(vertical: 15.h, horizontal: 10.w),
          hintText: hint,
          hintStyle: AppFonts.font_14.copyWith(
            color: AppColor.grey,
          ),
        ),
      ),
    );
  }
}
