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
      required this.categoryName});
  final String image;
  final String title;
  final int price;

  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.h),
      width: 155.h,
      height: 240.h,
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
          Text(
            "\$$price",
            style: AppFonts.semiBold_14,
          ),
        ],
      ),
    );
  }
}
