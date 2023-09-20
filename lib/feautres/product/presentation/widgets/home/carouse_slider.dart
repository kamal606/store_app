import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/constant/image_assets.dart';

import '../../../../../core/fonts/app_font.dart';

class CustomCarouseSlider extends StatelessWidget {
  const CustomCarouseSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 8 / 4,
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
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  height: 150.h,
                  width: 325.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12.r)),
                  ),
                  child: Image.asset(
                    i.imageName,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Positioned(
                  right: 120.h,
                  child: Container(
                    alignment: Alignment.center,
                    height: 150.h,
                    width: 300.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(80.r),
                          bottomRight: Radius.circular(80.r)),
                      color: AppColor.blue,
                    ),
                  ),
                ),
                Positioned(
                  left: 15.h,
                  top: 40.h,
                  child: Text(
                    i.title,
                    textAlign: TextAlign.start,
                    style: AppFonts.font_18
                        .copyWith(color: AppColor.white, height: 1.3),
                  ),
                ),
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

  AppSlider({required this.imageName, required this.title});

  static List<AppSlider> sliderImage = [
    AppSlider(
      imageName: AppAssets.slider1,
      title: "Get ready\n to start\n with us",
    ),
    AppSlider(
      imageName: AppAssets.slider2,
      title: "Our offers\n are\n irresistible",
    ),
    AppSlider(
      imageName: AppAssets.slider3,
      title: "discount\n on products\n 70%",
    ),
    AppSlider(
      imageName: AppAssets.slider4,
      title: "Keep an eye\n on our latest\n news",
    ),
  ];
}
