import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/classes/icons.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/fonts/app_font.dart';
import 'package:store_app/core/widgets/custom_elvated_button.dart';
import 'package:store_app/core/widgets/custom_increment_quantity.dart';
import 'package:store_app/feautres/cart/presentation/bloc/cart/cart_bloc.dart';
import 'package:store_app/feautres/products/domain/entities/product_entity.dart';
import 'package:store_app/generated/l10n.dart';

class CustomCardWishlistAndCart extends StatelessWidget {
  const CustomCardWishlistAndCart(
      {super.key,
      required this.productEntity,
      this.onPressed,
      this.isCart = false});
  final ProductEntity productEntity;
  final Function()? onPressed;
  final bool isCart;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.h),
      child: Material(
        elevation: 3.h,
        shadowColor: AppColor.darkGrey,
        borderRadius: BorderRadius.circular(14.h),
        child: Container(
          padding: EdgeInsets.all(12.h),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.h),
            color: Theme.of(context).colorScheme.secondary,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(14.h),
                  child: CachedNetworkImage(
                    fadeInCurve: Curves.easeIn,
                    imageUrl: productEntity.image,
                    fit: BoxFit.fill,
                    height: 90.h,
                    width: 90.h,
                  )),
              SizedBox(
                width: 10.h,
              ),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                productEntity.titleProduct,
                                style: AppFonts.bold_14,
                              ),
                              Text(
                                productEntity.brandProduct,
                                style: AppFonts.regular_11,
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: onPressed,
                          icon: Icon(
                            AppIcon.xmark,
                            size: 16.h,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$${productEntity.priceProduct.toStringAsFixed(2)}",
                          style: AppFonts.bold_14,
                        ),
                        isCart
                            ? const CustomIncrementQuantity()
                            : CustomElvatedButton(
                                onPressed: () {
                                  BlocProvider.of<CartBloc>(context).add(
                                    AddToCartEvent(
                                        productEntity: productEntity),
                                  );
                                },
                                title: S.of(context).addToCart,
                                fontTitle: AppFonts.semiBold_12,
                              ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
