import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:store_app/feautres/favorite/presentation/widget/section_empty_favorite.dart';
import 'package:store_app/feautres/favorite/presentation/widget/section_form_field.dart';

class FavoriteViewBody extends StatelessWidget {
  const FavoriteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.h),
      child: const CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: SectionFormField(),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                SectionEmptyFavorite(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
