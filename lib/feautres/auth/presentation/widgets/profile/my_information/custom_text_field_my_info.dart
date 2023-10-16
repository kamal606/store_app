import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/fonts/app_font.dart';

class CustomTextFieldMyInfo extends StatelessWidget {
  const CustomTextFieldMyInfo(
      {super.key, required this.titleLable, this.onChanged, this.controller});
  final String titleLable;
  final Function(String?)? onChanged;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        style: AppFonts.semiBold_14.copyWith(color: AppColor.blacK),
        maxLines: null,
        cursorColor: AppColor.jGDark,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 15.h, left: 10.h),
          label: Text(
            titleLable,
          ),
          labelStyle: AppFonts.semiBold_14.copyWith(color: AppColor.grey),
          filled: true,
          fillColor: AppColor.white,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.jGDark),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.jGDark),
          ),
        ),
      ),
    );
  }
}
