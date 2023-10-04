import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/classes/image_assets.dart';
import 'package:store_app/core/fonts/app_font.dart';

class SectionEmptyFavorite extends StatelessWidget {
  const SectionEmptyFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AppAssets.wishlist,
          height: 120.h,
        ),
        Text(
          "Favorites are empty",
          style: AppFonts.semiBold_12,
        ),
      ],
    );
  }
}
