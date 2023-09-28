import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/color/app_color.dart';

class SectionListImages extends StatelessWidget {
  const SectionListImages({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: ((context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 10.h),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.h),
                  border: Border.all(width: 2, color: AppColor.blue)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.h),
                child: CachedNetworkImage(
                  imageUrl:
                      "https://i.dummyjson.com/data/products/1/thumbnail.jpg",
                  fadeInCurve: Curves.bounceOut,
                  fit: BoxFit.fill,
                  width: 100.h,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
