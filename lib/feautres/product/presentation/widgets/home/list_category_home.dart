import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/feautres/product/presentation/bloc/get_category/get_category_bloc.dart';
import 'package:store_app/feautres/product/presentation/widgets/category/custom_box_category.dart';
import 'package:store_app/core/shimmer_loading/shimmer_loading_category.dart';

import '../../../../../core/fonts/app_font.dart';
import '../../../../../core/utils/icon_category.dart';
import '../../../../../core/widgets/custom_flutter_toast.dart';

class ListCategoryHome extends StatelessWidget {
  const ListCategoryHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Categories",
              style: AppFonts.semiBold_18,
            ),
            Text(
              "See All",
              style: AppFonts.semiBold_14.copyWith(color: AppColor.blue),
            )
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        SizedBox(
            height: 120.h,
            child: BlocConsumer<GetCategoryBloc, GetCategoryState>(
              listener: (context, state) {
                if (state is GetCategoryFailure) {
                  toast(message: state.errMessage, color: AppColor.erorr);
                }
              },
              builder: (context, state) {
                if (state is GetCategorySuccess) {
                  return ListView.builder(
                      clipBehavior: Clip.none,
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemCount: state.category.length,
                      itemBuilder: (context, i) {
                        return Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 30.w),
                              child: InkWell(
                                onTap: () {},
                                child: CustomBoxCategory(
                                  image:
                                      AppCategoryIcon.categoryListIcon[i].icon,
                                  title: state.category[i].categoryName,
                                  colorbox: AppCategoryIcon
                                      .categoryListIcon[i].colorbox,
                                ),
                              ),
                            ),
                          ],
                        );
                      });
                } else {
                  return const ShimmerLoadingCategory();
                }
              },
            ))
      ],
    );
  }
}
