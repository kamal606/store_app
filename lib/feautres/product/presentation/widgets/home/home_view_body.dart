import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/utils/icons.dart';
import 'package:store_app/core/widgets/custom_text_form_field.dart';
import 'package:store_app/feautres/product/presentation/widgets/home/carouse_slider.dart';
import 'package:store_app/feautres/product/presentation/widgets/home/category_home.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.only(right: 20.w, left: 20.w, top: 30.h),
            child: Column(
              children: [
                CutomTextFormField(
                  hint: "Search Product Name",
                  suffixIcon: AppIcon.search,
                  onPressed: () {},
                ),
                SizedBox(
                  height: 30.h,
                ),
                const CustomCarouseSlider(),
                SizedBox(
                  height: 30.h,
                ),
                const CategoryHome(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
