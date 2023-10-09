import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/function/toast_flutter.dart';
import 'package:store_app/core/shimmer_loading/shimmer_loading_products_of_category.dart';
import 'package:store_app/core/utils/go_router.dart';
import 'package:store_app/feautres/products/presentation/bloc/get_products_of_category/get_products_of_category_bloc.dart';
import 'package:store_app/feautres/products/presentation/widgets/home/custom_card_product.dart';

class ProductCategoryBody extends StatelessWidget {
  const ProductCategoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.h),
      child:
          BlocConsumer<GetProductsOfCategoryBloc, GetProductsOfCategoryState>(
        listener: (context, state) {
          if (state is GetProductsOfCategoryFailure) {
            toast(message: state.errorMessage, color: AppColor.erorr);
          }
        },
        builder: (context, state) {
          if (state is GetProductsOfCategoryLoading) {
            return const ShimmerLoadingProductsOfCategory();
          }
          if (state is GetProductsOfCategorySuccess) {
            return GridView.builder(
              physics: const BouncingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 40.h,
                crossAxisSpacing: 8,
                childAspectRatio: 0.54.h,
              ),
              itemCount: state.listProducts.length,
              itemBuilder: (context, i) {
                final product = state.listProducts[i];
                return InkWell(
                  onTap: () {
                    context.push(AppRouter.detailsProductView, extra: product);
                  },
                  child: CustomCardProduct(
                    brandProduct: product.brandProduct,
                    id: product.idProduct,
                    image: product.image,
                    price: product.priceProduct,
                    title: product.titleProduct,
                  ),
                );
              },
            );
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
