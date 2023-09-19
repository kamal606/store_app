import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/constant/route_name.dart';
import 'package:store_app/core/fonts/app_font.dart';
import 'package:store_app/core/utils/icons.dart';
import 'package:store_app/core/widgets/custom_appbar.dart';
import 'package:store_app/core/widgets/custom_text_form_field.dart';
import 'package:store_app/feautres/product/data/data_source/local_data_source.dart/icon_category.dart';

import '../widgets/home/carouse_slider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: RouteName.home),
        builder: (context) => const HomeView());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        action1: AppIcon.notifcation,
        action2: AppIcon.cart,
      ),
      body: Padding(
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
    );
  }
}

class CategoryHome extends StatelessWidget {
  const CategoryHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Categories",
              style: AppFonts.font_18,
            ),
            Text(
              "See All",
              style: AppFonts.font_14.copyWith(color: AppColor.blue),
            )
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        SizedBox(
          height: 120.h,
          child: ListView.builder(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: AppCategoryIcon.categoryListIcon.length,
              itemBuilder: (context, i) {
                return Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 16.w),
                      child: CustomBoxCategory(
                        image: AppCategoryIcon.categoryListIcon[i].icon,
                        title: AppCategoryIcon.categoryListIcon[i].title,
                        colorbox: AppCategoryIcon.categoryListIcon[i].colorbox,
                      ),
                    ),
                  ],
                );
              }),
        )
      ],
    );
  }
}

class CustomBoxCategory extends StatelessWidget {
  const CustomBoxCategory(
      {super.key, required this.image, required this.title, this.colorbox});
  final String image;
  final String title;

  final Color? colorbox;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 48.h,
          width: 48.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: colorbox,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image,
                color: AppColor.white,
                height: 28.h,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: AppFonts.font_12,
        )
      ],
    );
  }
}
