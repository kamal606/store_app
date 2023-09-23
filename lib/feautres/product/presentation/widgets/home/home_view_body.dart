import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/constant/image_assets.dart';
import 'package:store_app/core/utils/icons.dart';
import 'package:store_app/core/widgets/custom_text_form_field.dart';
import 'package:store_app/feautres/product/presentation/bloc/get_product_of_category/get_product_of_category_bloc.dart';
import 'package:store_app/feautres/product/presentation/widgets/home/carouse_slider.dart';
import 'package:store_app/feautres/product/presentation/widgets/home/category_home.dart';

import '../../../../../core/color/app_color.dart';
import '../../../../../core/fonts/app_font.dart';

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
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class SectionTitleWithFormField extends StatelessWidget {
  const SectionTitleWithFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            "Welcome,",
            style: AppFonts.bold_25,
          ),
          subtitle: Text(
            "Our Ecommerce App",
            style: AppFonts.semiBold_20.copyWith(color: AppColor.darkGrey),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        CutomTextFormField(
          hint: "Search Product Name",
          prefixIcon: AppIcon.search,
          onPressed: () {},
        ),
      ],
    );
  }
}

class CustomListProductHome extends StatelessWidget {
  const CustomListProductHome({
    super.key,
    this.titleList,
  });
  final String? titleList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              titleList ?? "",
              style: AppFonts.semiBold_18,
            ),
            Text(
              "See All",
              style: AppFonts.semiBold_14.copyWith(color: AppColor.blue),
            ),
          ],
        ),
        SizedBox(
          height: 30.h,
        ),
        BlocBuilder<GetProductOfCategoryBloc, GetProductOfCategoryState>(
          builder: (context, state) {
            if (state is GetProductOfCategoryFailure) {
              return Text(state.errMessage);
            } else if (state is GetProductOfCategorySuccess) {
              return SizedBox(
                height: 256.h,
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    clipBehavior: Clip.none,
                    scrollDirection: Axis.horizontal,
                    itemCount: state.products.length,
                    itemBuilder: (context, i) {
                      if (state.products[i].categoryProduct == "tops") {
                        return CustomCardProduct(
                          image: state.products[i].image,
                          price: state.products[i].priceProduct,
                          rate: state.products[i].ratingProduct,
                          title: state.products[i].titleProduct,
                        );
                      }
                      return null;
                    }),
              );
            } else {
              return const CircularProgressIndicator();
            }
          },
        )
      ],
    );
  }
}

class CustomCardProduct extends StatelessWidget {
  const CustomCardProduct(
      {super.key,
      required this.image,
      required this.title,
      required this.price,
      required this.rate});
  final String image;
  final String title;
  final int price;
  final double rate;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColor.background,
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
                  imageUrl: image,
                  fadeOutCurve: Curves.easeOut,
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
                title,
                style: AppFonts.regular_8,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Expanded(
              child: Text(
                "$price",
                style: AppFonts.regular_8.copyWith(color: AppColor.erorr),
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
                    "$rate",
                    style: AppFonts.regular_8,
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
