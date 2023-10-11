import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/widgets/custom_elvated_button.dart';

class SectionButtonLogin extends StatelessWidget {
  const SectionButtonLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.h,
      width: double.infinity,
      child: CustomElvatedButton(
        isRadius: false,
        colorTitle: AppColor.blacK,
        title: "Login",
        backgroundColor: AppColor.white,
        onPressed: () {},
      ),
    );
  }
}
