import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/feautres/favorite/presentation/widget/section_form_field.dart';
import 'package:store_app/feautres/favorite/presentation/widget/section_list_product.dart';

class FavoriteViewBody extends StatelessWidget {
  const FavoriteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        top: 20.h,
      ),
      child: Column(
        children: [
          const SectionFormFieldAndDeleteAll(),
          SizedBox(
            height: 30.h,
          ),
          const SectionListProduct(),
        ],
      ),
    );
  }
}
