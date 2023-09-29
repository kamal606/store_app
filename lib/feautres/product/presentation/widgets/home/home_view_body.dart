import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/feautres/product/presentation/widgets/home/carouse_slider.dart';
import 'package:store_app/feautres/product/presentation/widgets/home/custom_list_product_home.dart';
import 'package:store_app/feautres/product/presentation/widgets/home/list_category_home.dart';

import '../../../../../core/classes/image_assets.dart';
import '../../../../../core/widgets/custom_sliver_appbar.dart';
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
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: const Column(
              children: [
                CustomCarouseSlider(),
                ListCategoryHome(),
                CustomListProductHome(
                  titleList: "Sale Product",
                  categoryName: "laptops",
                  colorStatus: AppColor.erorr,
                  isStatus: true,
                  isDiscount: true,
                ),
                CustomListProductHome(
                  titleList: "New Arrivals",
                  categoryName: "fragrances",
                  isStatus: true,
                  titleStatus: "NEW",
                ),
                CustomListProductHome(
                  titleList: "Recommended",
                  categoryName: "skincare",
                  colorStatus: AppColor.blacK,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
