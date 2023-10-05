import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/classes/image_assets.dart';
import 'package:store_app/core/fonts/app_font.dart';
import 'package:store_app/generated/l10n.dart';

class SectionEmptyFavorite extends StatelessWidget {
  const SectionEmptyFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          AppAssets.wishlist,
          height: 80.h,
        ),
        Text(
          S.of(context).favoritesEmpty,
          style: AppFonts.regular_10,
        ),
      ],
    );
  }
}
