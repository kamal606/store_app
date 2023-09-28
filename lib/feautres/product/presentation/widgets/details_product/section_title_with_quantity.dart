import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/core/classes/icons.dart';
import 'package:store_app/core/fonts/app_font.dart';

import '../../../../../core/color/app_color.dart';
import '../../../domain/entities/product_entity.dart';

class SectionTitleWithQuantity extends StatelessWidget {
  const SectionTitleWithQuantity({super.key, required this.productEntity});
  final ProductEntity productEntity;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
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
                    AppIcon.solidStar,
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
        ),
        Column(
          children: [
            Container(
              width: 100.h,
              height: 35.h,
              decoration: BoxDecoration(
                color: AppColor.background,
                borderRadius: BorderRadius.circular(16.h),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    onPressed: () {},
                    icon: FaIcon(
                      AppIcon.minus,
                      size: 15.h,
                    ),
                  ),
                  Text(
                    "1",
                    style: AppFonts.regular_13,
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    onPressed: () {},
                    icon: FaIcon(
                      AppIcon.plus,
                      size: 15.h,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Stock : ${productEntity.stockProduct}",
              style: AppFonts.bold_13,
            ),
          ],
        )
      ],
    );
  }
}
