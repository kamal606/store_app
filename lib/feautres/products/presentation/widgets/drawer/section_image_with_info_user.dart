import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/classes/image_assets.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/fonts/app_font.dart';

class SectionImageWithInfoUser extends StatelessWidget {
  const SectionImageWithInfoUser({super.key, required this.widthNameWithEmail});
  final double widthNameWithEmail;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 45.h,
          backgroundColor: AppColor.blacK,
          backgroundImage: const AssetImage(AppAssets.avatarProfile),
        ),
        SizedBox(
          width: widthNameWithEmail,
          child: ListTile(
            title: Text(
              "Kamal mahmoud ibrahim",
              style: AppFonts.bold_16.copyWith(color: AppColor.drawerName),
            ),
            subtitle: Text(
              "kamalibrahim@gmail.com",
              style: AppFonts.semiBold_11,
            ),
          ),
        ),
      ],
    );
  }
}
