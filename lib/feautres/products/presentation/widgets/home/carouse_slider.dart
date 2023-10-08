import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/function/check_local_arabic.dart';
import '../../../../../core/color/app_color.dart';
import '../../../../../core/classes/image_assets.dart';

import '../../../../../core/fonts/app_font.dart';

class CustomCarouseSlider extends StatelessWidget {
  const CustomCarouseSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        clipBehavior: Clip.none,
        initialPage: 0,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
      items: AppSlider.sliderImage.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Stack(
              alignment: isArabicLocale()
                  ? Alignment.centerRight
                  : Alignment.centerLeft,
              children: [
                Material(
                  elevation: 3.h,
                  shadowColor: AppColor.darkGrey,
                  borderRadius: BorderRadius.all(Radius.circular(16.r)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(16.r)),
                    child: Image.asset(
                      i.imageName,
                      fit: BoxFit.fill,
                      height: 160.h,
                      width: 300.w,
                    ),
                  ),
                ),
                Positioned(
                  left: 10.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(i.title,
                          style: AppFonts.bold_25
                              .copyWith(color: AppColor.jGDark)),
                      Text(i.subTitle,
                          style: AppFonts.regular_16
                              .copyWith(color: AppColor.darkGrey)),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(i.code,
                          style: AppFonts.semiBold_11
                              .copyWith(color: AppColor.jGMedium)),
                    ],
                  ),
                )
              ],
            );
          },
        );
      }).toList(),
    );
  }
}

class AppSlider {
  final String imageName;
  final String title;
  final String subTitle;
  final String code;

  AppSlider(
      {required this.imageName,
      required this.title,
      required this.subTitle,
      required this.code});

  static List<AppSlider> sliderImage = [
    AppSlider(
      imageName: AppAssets.slider1,
      title: isArabicLocale() ? "خصم %50" : "50% Off",
      subTitle: isArabicLocale() ? "على كل شيء اليوم" : "On everything today",
      code: isArabicLocale()
          ? "باستخدام الكود: FSCREATION"
          : " With code:FSCREATION",
    ),
    AppSlider(
      imageName: AppAssets.slider2,
      title: isArabicLocale() ? "استعد" : "Get ready",
      subTitle: isArabicLocale() ? "للبدء معنا" : "to start with us",
      code: "",
    ),
  ];
}
