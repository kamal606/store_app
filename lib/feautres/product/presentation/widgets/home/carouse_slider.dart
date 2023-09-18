import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/constant/image_assets.dart';

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
      items: AppSlider.slider.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                border: Border.all(color: AppColor.grey, width: 0.5),
              ),
              child: CachedNetworkImage(
                imageUrl: i,
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                        colorFilter: const ColorFilter.mode(
                            Colors.grey, BlendMode.colorBurn)),
                  ),
                ),
                placeholder: (context, url) => const Center(
                    child: CircularProgressIndicator(
                  color: AppColor.blacK,
                )),
                errorWidget: (context, url, error) => Image.asset(
                  AppAssets.error,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}

abstract class AppSlider {
  static List slider = [
    "https://i.dummyjson.com/data/products/1/thumbnail.jpg",
    "https://i.dummyjson.com/data/products/47/thumbnail.jpeg",
    "https://i.dummyjson.com/data/products/55/thumbnail.jpg",
    "https://i.dummyjson.com/data/products/76/thumbnail.jpg",
    "https://i.dummyjson.com/data/products/82/thumbnail.jpg",
    "https://i.dummyjson.com/data/products/93/thumbnail.jpg",
    "https://i.dummyjson.com/data/products/99/thumbnail.jpg",
  ];
}
