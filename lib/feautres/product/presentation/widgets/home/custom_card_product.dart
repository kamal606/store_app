import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/constant/image_assets.dart';
import 'package:store_app/core/fonts/app_font.dart';

class CustomCardProduct extends StatelessWidget {
  const CustomCardProduct(
      {super.key,
      required this.image,
      required this.title,
      required this.price,
      required this.categoryName,
      this.colorStatus,
      this.titleStatus,
      this.isStatus = false,
      this.isDiscount = false,
      this.priceDiscount});
  final String image;
  final String title;
  final int price;
  final Color? colorStatus;
  final String categoryName;
  final String? titleStatus;
  final bool isStatus;
  final bool isDiscount;
  final num? priceDiscount;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          padding: EdgeInsets.all(5.h),
          width: 155.h,
          margin: EdgeInsets.only(right: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.h),
                child: CachedNetworkImage(
                  height: 100.h,
                  imageUrl: image,
                  fadeOutCurve: Curves.easeOut,
                  errorWidget: (context, url, error) =>
                      Image.asset(AppAssets.error),
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              Text(
                title,
                style: AppFonts.semiBold_14,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                categoryName,
                style: AppFonts.regular_11.copyWith(color: AppColor.lightGrey),
              ),
              isDiscount
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "\$${price.toStringAsFixed(1)}",
                          style: AppFonts.semiBold_14.copyWith(
                            color: AppColor.blacK,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        SizedBox(
                          width: 4.h,
                        ),
                        Text(
                          "\$${(price - price * priceDiscount! / 100).toStringAsFixed(1)}",
                          style: AppFonts.semiBold_14.copyWith(
                            color: AppColor.erorr,
                          ),
                        ),
                      ],
                    )
                  : Text("\$${price.toStringAsFixed(1)}",
                      style: AppFonts.semiBold_14),
            ],
          ),
        ),
        isStatus == true
            ? Container(
                padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 3.h),
                decoration: BoxDecoration(
                  color: colorStatus ?? AppColor.erorr,
                  borderRadius: BorderRadius.circular(30.r),
                ),
                child: Text(
                  "$titleStatus",
                  style: AppFonts.regular_13.copyWith(color: AppColor.white),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
