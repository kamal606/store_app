import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/classes/icons.dart';
import '../../../../../core/fonts/app_font.dart';

import '../../../../../core/color/app_color.dart';
import '../../../domain/entities/product_entity.dart';

class SectionIncrementQuantity extends StatelessWidget {
  const SectionIncrementQuantity({super.key, required this.productEntity});
  final ProductEntity productEntity;
  @override
  Widget build(BuildContext context) {
    return Column(
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
                  color: AppColor.blacK,
                ),
              ),
              Text(
                "1",
                style: AppFonts.regular_13.copyWith(color: AppColor.blacK),
              ),
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: () {},
                icon: FaIcon(
                  AppIcon.plus,
                  size: 15.h,
                  color: AppColor.blacK,
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
    );
  }
}
