import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:store_app/core/color/app_color.dart';

class ShimmerLoadingListDetailsProduct extends StatelessWidget {
  const ShimmerLoadingListDetailsProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: 90.h,
            child: Shimmer.fromColors(
                baseColor: Colors.black12,
                highlightColor: Colors.white,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: ((context, i) {
                    return Padding(
                      padding: EdgeInsets.only(right: 10.h),
                      child: Container(
                        color: AppColor.grey,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50.h),
                        ),
                      ),
                    );
                  }),
                )))
      ],
    );
  }
}
