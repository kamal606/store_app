import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/feautres/product/presentation/widgets/home/carouse_slider.dart';
import 'package:store_app/feautres/product/presentation/widgets/home/category_home.dart';
import 'package:store_app/feautres/product/presentation/widgets/home/custom_list_product_home.dart';
import 'package:store_app/feautres/product/presentation/widgets/home/section_form_field_and_title.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(right: 20.w, left: 20.w, top: 30.h),
            child: Column(
              children: [
                const SectionTitleWithFormField(),
                SizedBox(
                  height: 30.h,
                ),
                const CustomCarouseSlider(),
                SizedBox(
                  height: 30.h,
                ),
                const CategoryHome(),
                SizedBox(
                  height: 30.h,
                ),
                const CustomListProductHome(
                  titleList: "Featured Product",
                  typeCategoryName: "smartphones",
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
