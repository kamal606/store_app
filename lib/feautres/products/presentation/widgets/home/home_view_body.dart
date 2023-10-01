import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:store_app/generated/l10n.dart';
import '../../../../../core/color/app_color.dart';
import 'carouse_slider.dart';
import 'custom_list_product_home.dart';
import 'list_category_home.dart';

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
            child: Column(
              children: [
                const CustomCarouseSlider(),
                const ListCategoryHome(),
                CustomListProductHome(
                  titleList: S.of(context).saleProduct,
                  categoryName: "laptops",
                  colorStatus: AppColor.erorr,
                  isStatus: true,
                  isDiscount: true,
                ),
                CustomListProductHome(
                  titleList: S.of(context).newArrivals,
                  categoryName: "fragrances",
                  isStatus: true,
                  titleStatus: S.of(context).newArrival,
                ),
                CustomListProductHome(
                  titleList: S.of(context).recommended,
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
