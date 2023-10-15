import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/classes/image_assets.dart';
import '../../../../../core/color/app_color.dart';
import '../../../../../core/fonts/app_font.dart';

class SectionImageWithInfoUser extends StatelessWidget {
  const SectionImageWithInfoUser({super.key, required this.widthNameWithEmail});
  final double widthNameWithEmail;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 45.h,
          backgroundColor: AppColor.white,
          backgroundImage: const AssetImage(AppAssets.avatarProfile),
        ),
        SizedBox(
          width: widthNameWithEmail,
          child: ListTile(
            title: Text(
              "Kamal mahmoud ibrahim",
              style: AppFonts.bold_16.copyWith(color: AppColor.white),
            ),
            subtitle: Text(
              "kamalibrahim@gmail.com",
              style: AppFonts.semiBold_11.copyWith(color: AppColor.blacK),
            ),
          ),
        ),
      ],
    );
  }
}
