import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/fonts/app_font.dart';

class CutomTextFormField extends StatelessWidget {
  const CutomTextFormField({
    super.key,
    required this.hint,
    this.prefixIcon,
    this.onPressed,
  });
  final String hint;
  final IconData? prefixIcon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 10.w,
      child: TextFormField(
        cursorColor: AppColor.blacK,
        decoration: InputDecoration(
          prefixIcon: IconButton(
            onPressed: onPressed,
            icon: FaIcon(
              prefixIcon,
              size: 20.h,
            ),
            color: AppColor.blacK,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(25.r),
            ),
            borderSide: BorderSide.none,
          ),
          fillColor: AppColor.formField,
          filled: true,
          contentPadding: EdgeInsets.symmetric(vertical: 5.h),
          hintText: hint,
          hintStyle: AppFonts.regular_13.copyWith(
            color: AppColor.lightGrey,
          ),
        ),
      ),
    );
  }
}
