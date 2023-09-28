import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/feautres/product/presentation/widgets/details_product/section_description.dart';
import 'package:store_app/feautres/product/presentation/widgets/details_product/section_list_images.dart';
import 'package:store_app/feautres/product/presentation/widgets/details_product/section_price_button.dart';
import 'package:store_app/feautres/product/presentation/widgets/details_product/section_title_with_quantity.dart';

class BodyContainerDiscripeProduct extends StatelessWidget {
  const BodyContainerDiscripeProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 240,
        padding: EdgeInsets.only(
          left: 20.h,
          right: 20.h,
          top: 20.h,
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColor.darkGrey,
              offset: Offset(0, 10.h),
              blurRadius: 12,
            ),
          ],
          color: AppColor.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.h),
            topRight: Radius.circular(20.h),
          ),
        ),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  const SectionTitleWithQuantity(),
                  SizedBox(
                    height: 20.h,
                  ),
                  const SectionDescription(),
                  SizedBox(
                    height: 30.h,
                  ),
                  const SectionListImages(),
                  SizedBox(
                    height: 20.h,
                  ),
                  const Spacer(),
                  const SectionPriceAndButtonCart(),
                  SizedBox(
                    height: 70.h,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
