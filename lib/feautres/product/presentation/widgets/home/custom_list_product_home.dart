import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/utils/error_display.dart';
import 'package:store_app/core/widgets/custom_flutter_toast.dart';
import 'package:store_app/feautres/product/presentation/widgets/home/custom_card_product.dart';

import '../../../../../core/fonts/app_font.dart';
import '../../../../../core/shimmer_loading/shimmer_loading_products.dart';
import '../../bloc/get_product_of_category/get_product_of_category_bloc.dart';

class CustomListProductHome extends StatelessWidget {
  const CustomListProductHome({
    super.key,
    this.titleList,
    required this.categoryName,
    this.colorStatus,
    this.isStatus = false,
    this.titleStatus,
    this.isDiscount = false,
  });
  final String? titleList;
  final String categoryName;
  final Color? colorStatus;
  final bool isStatus;
  final String? titleStatus;
  final bool isDiscount;

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
        BlocConsumer<GetProductOfCategoryBloc, GetProductOfCategoryState>(
          listener: (context, state) {
            if (state is GetProductOfCategoryFailure && !isErrorDisplayed) {
              toast(message: state.errMessage, color: AppColor.erorr);
              isErrorDisplayed = true;
            }
          },
          builder: (context, state) {
            if (state is GetProductOfCategorySuccess) {
              return SizedBox(
                height: 220.h,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  clipBehavior: Clip.none,
                  scrollDirection: Axis.horizontal,
                  itemCount: state.products.length,
                  itemBuilder: (context, i) {
                    final product = state.products[i];

                    if (product.categoryProduct == categoryName) {
                      return CustomCardProduct(
                          priceDiscount: product.discountPercentageProduct,
                          isDiscount: isDiscount,
                          titleStatus: titleStatus ??
                              product.discountPercentageProduct.toString(),
                          colorStatus: colorStatus,
                          isStatus: isStatus,
                          image: product.image,
                          title: product.titleProduct,
                          price: product.priceProduct,
                          categoryName: product.categoryProduct);
                    }
                    return Container();
                  },
                ),
              );
            } else {
              return const ShimmerLoadingProducts();
            }
          },
        )
      ],
    );
  }
}
