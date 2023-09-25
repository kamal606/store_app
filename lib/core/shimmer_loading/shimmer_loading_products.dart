import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:store_app/core/color/app_color.dart';

class ShimmerLoadingProducts extends StatelessWidget {
  const ShimmerLoadingProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: 220.h,
            child: Shimmer.fromColors(
              baseColor: Colors.black12,
              highlightColor: Colors.white,
              child: ListView.builder(
                  clipBehavior: Clip.none,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, i) {
                    return Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 20.h),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                color: AppColor.grey,
                              ),
                              width: 155.h,
                              height: 210.h,
                            ),
                          ],
                        ),
                      ],
                    );
                  }),
            ))
      ],
    );
  }
}
