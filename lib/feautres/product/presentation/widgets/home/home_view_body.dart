import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/fonts/app_font.dart';
import 'package:store_app/core/utils/icons.dart';
import 'package:store_app/feautres/product/presentation/widgets/home/carouse_slider.dart';
import 'package:store_app/feautres/product/presentation/widgets/home/list_category_home.dart';
import 'package:store_app/feautres/product/presentation/widgets/home/custom_list_product_home.dart';
import 'package:store_app/feautres/product/presentation/widgets/home/section_form_field_and_title.dart';

import '../../../../../core/constant/image_assets.dart';
import '../../../../../core/widgets/custom_appbar.dart';
import '../../bloc/status_internet/status_internet_bloc.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        CustomSliverAppBar(
          iconLeading: AppIcon.solidChessRook,
          onPressedLeading: () {},
          action: CircleAvatar(
            backgroundColor: AppColor.white,
            child: Image.asset(
              AppAssets.avatarProfile,
            ),
          ),
        ),
        const CustomInternetStatus(),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(right: 20.w, left: 20.w, top: 30.h),
            child: Column(
              children: [
                const SectionTitleWithFormField(),
                SizedBox(
                  height: 30.h,
                ),
                const CustomCarouseSlider(),
                SizedBox(
                  height: 30.h,
                ),
                const ListCategoryHome(),
                SizedBox(
                  height: 30.h,
                ),
                const CustomListProductHome(
                  titleList: "Featured Product",
                  categoryName: "laptops",
                  colorStatus: AppColor.erorr,
                  isStatus: true,
                  isDiscount: true,
                ),
                const CustomListProductHome(
                  titleList: "Recommended Product",
                  categoryName: "fragrances",
                  colorStatus: AppColor.blacK,
                  isStatus: true,
                  titleStatus: "NEW",
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class CustomInternetStatus extends StatelessWidget {
  const CustomInternetStatus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: BlocBuilder<StatusInternetBloc, StatusInternetState>(
      builder: (context, state) {
        return Container(
          alignment: Alignment.center,
          color: state is StatusInternetOffline
              ? AppColor.erorr
              : state is StatusInternetOnline
                  ? Colors.transparent
                  : null,
          height: 20.h,
          child: Text(
            state is StatusInternetOffline
                ? state.message
                : state is StatusInternetOnline
                    ? ""
                    : "",
            style: AppFonts.regular_11.copyWith(color: AppColor.white),
          ),
        );
      },
    ));
  }
}
