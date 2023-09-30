import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/classes/icons.dart';
import '../../../../../core/fonts/app_font.dart';

import '../../../../../core/color/app_color.dart';
import '../../../domain/entities/product_entity.dart';

class SectionRateWithTitle extends StatelessWidget {
  const SectionRateWithTitle({super.key, required this.productEntity});
  final ProductEntity productEntity;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          child: Text(
            productEntity.titleProduct,
            style: AppFonts.semiBold_18,
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          productEntity.categoryProduct,
          style: AppFonts.regular_11,
        ),
        SizedBox(
          height: 5.h,
        ),
        Row(
          children: [
            ...List.generate(
              5,
              (index) => FaIcon(
                productEntity.ratingProduct >= index + 1
                    ? AppIcon.solidStar
                    : productEntity.ratingProduct <= index
                        ? AppIcon.star
                        : AppIcon.starHalf,
                color: AppColor.star,
                size: 12.h,
              ),
            ),
            SizedBox(
              width: 5.h,
            ),
            Text(
              "(${productEntity.ratingProduct})",
              style: AppFonts.regular_10,
            ),
          ],
        )
      ],
    );
  }
}
