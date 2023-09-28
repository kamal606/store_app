import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/feautres/product/presentation/widgets/details_product/section_title_with_quantity.dart';

class BodyContainerDiscripeProduct extends StatelessWidget {
  const BodyContainerDiscripeProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        top: 20.h,
      ),
      height: 412.h,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: AppColor.darkGrey,
                offset: Offset(0, 10.h),
                blurRadius: 12)
          ],
          color: AppColor.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.h), topRight: Radius.circular(20.h))),
      child: const Column(
        children: [
          SectionTitleWithQuantity(),
        ],
      ),
    );
  }
}
