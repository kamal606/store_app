import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/widgets/custom_flutter_toast.dart';
import 'package:store_app/feautres/product/presentation/widgets/home/custom_card_product.dart';

import '../../../../../core/fonts/app_font.dart';
import '../../../../../core/shimmer_loading/shimmer_loading_products.dart';
import '../../bloc/get_product_of_category/get_product_of_category_bloc.dart';

class CustomListProductHome extends StatelessWidget {
  const CustomListProductHome({
    super.key,
    this.titleList,
    required this.typeCategoryName,
  });
  final String? titleList;
  final String typeCategoryName;
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
            if (state is GetProductOfCategoryFailure) {
              toast(message: state.errMessage, color: AppColor.erorr);
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
                      if (state.products[i].categoryProduct ==
                          typeCategoryName) {
                        return CustomCardProduct(
                          image: state.products[i].image,
                          price: state.products[i].priceProduct,
                          title: state.products[i].titleProduct,
                          categoryName: state.products[i].categoryProduct,
                        );
                      }
                      return null;
                    }),
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
