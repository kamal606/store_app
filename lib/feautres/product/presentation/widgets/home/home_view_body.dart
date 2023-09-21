import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/constant/image_assets.dart';
import 'package:store_app/core/utils/icons.dart';
import 'package:store_app/core/widgets/custom_text_form_field.dart';
import 'package:store_app/feautres/product/presentation/widgets/home/carouse_slider.dart';
import 'package:store_app/feautres/product/presentation/widgets/home/category_home.dart';

import '../../../../../core/color/app_color.dart';
import '../../../../../core/fonts/app_font.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
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
                SizedBox(
                  height: 25.h,
                ),
                const CustomListProductHome(
                  titleList: "Featured Product",
                  showAll: "See All",
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class CustomListProductHome extends StatelessWidget {
  const CustomListProductHome({super.key, this.titleList, this.showAll});
  final String? titleList;
  final String? showAll;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              titleList ?? "",
              style: AppFonts.font_18,
            ),
            Text(
              showAll ?? "",
              style: AppFonts.font_14.copyWith(color: AppColor.blue),
            ),
          ],
        ),
        SizedBox(
          height: 30.h,
        ),
        SizedBox(
          height: 256.h,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, i) {
                return const CustomCardProduct();
              }),
        )
      ],
    );
  }
}

class CustomCardProduct extends StatelessWidget {
  const CustomCardProduct(
      {super.key, this.image, this.title, this.price, this.rate});
  final String? image;
  final String? title;
  final double? price;
  final double? rate;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.h)),
      child: Container(
        padding: EdgeInsets.all(10.h),
        height: 246.h,
        width: 156.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150.h,
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.h),
                child: CachedNetworkImage(
                  imageUrl: "https://i.dummyjson.com/data/products/40/2.jpg",
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) =>
                      Image.asset(AppAssets.error),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: Text(
                "TMA-2 HD Wireless",
                style: AppFonts.font_16,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Expanded(
              child: Text(
                "Rp. 1.500.000",
                style: AppFonts.font_14.copyWith(color: AppColor.erorr),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 14.h,
                    color: AppColor.yellow,
                  ),
                  SizedBox(
                    width: 3.h,
                  ),
                  Text(
                    "4.6",
                    style: AppFonts.font_14,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
