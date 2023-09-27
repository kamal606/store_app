import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/utils/icons.dart';
import 'package:store_app/feautres/product/presentation/widgets/home/carouse_slider.dart';
import 'package:store_app/feautres/product/presentation/widgets/home/list_category_home.dart';
import 'package:store_app/feautres/product/presentation/widgets/home/custom_list_product_home.dart';
import 'package:store_app/feautres/product/presentation/widgets/home/section_form_field_and_title.dart';

import '../../../../../core/constant/image_assets.dart';
import '../../../../../core/widgets/custom_appbar.dart';
import '../../../../../core/widgets/custom_internet_status.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        CustomSliverAppBar(
          iconLeading: AppIcon.solidChessRook,
          onPressedLeading: () {},
          action: CircleAvatar(
            backgroundColor: AppColor.white,
            child: Image.asset(
              AppAssets.avatarProfile,
            ),
          ),
        ),
        const CustomInternetStatus(),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(right: 20.w, left: 20.w, top: 30.h),
            child: Column(
              children: [
                const SectionTitleWithFormField(),
                SizedBox(
                  height: 15.h,
                ),
                const CustomCarouseSlider(),
                SizedBox(
                  height: 15.h,
                ),
                const ListCategoryHome(),
                SizedBox(
                  height: 15.h,
                ),
                const CustomListProductHome(
                  titleList: "Featured Product",
                  categoryName: "laptops",
                  colorStatus: AppColor.erorr,
                  isStatus: true,
                  isDiscount: true,
                ),
                const CustomListProductHome(
                  titleList: "Recommended Product",
                  categoryName: "fragrances",
                  colorStatus: AppColor.blacK,
                  isStatus: true,
                  titleStatus: "NEW",
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
