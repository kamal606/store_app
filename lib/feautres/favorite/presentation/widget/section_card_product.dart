import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/classes/icons.dart';
import 'package:store_app/core/classes/image_assets.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/fonts/app_font.dart';
import 'package:store_app/core/widgets/custom_elvated_button.dart';

class CustomCardWishlist extends StatelessWidget {
  const CustomCardWishlist({super.key});

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
                child: Image.asset(
                  AppAssets.shoes,
                  fit: BoxFit.cover,
                  height: 90.h,
                  width: 90.h,
                ),
              ),
              SizedBox(
                width: 10.h,
              ),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Roller Rabbit",
                              style: AppFonts.bold_14,
                            ),
                            Text(
                              "Vado Odelle Dress",
                              style: AppFonts.regular_11,
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
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
                          r"$198.00",
                          style: AppFonts.bold_14,
                        ),
                        CustomElvatedButton(
                          onPressed: () {},
                          title: "add to cart",
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
