import 'package:flutter/material.dart';
import '../color/app_color.dart';
import 'image_assets.dart';

class AppCategoryIcon {
  final String icon;
  final String title;
  final Color colorbox;

  AppCategoryIcon(
      {required this.icon, required this.title, required this.colorbox});

  static List<AppCategoryIcon> categoryListIcon = [
    AppCategoryIcon(
      icon: AppAssets.smartPhone,
      title: "Phone",
      colorbox: AppColor.jGDark,
    ),
    AppCategoryIcon(
      icon: AppAssets.laptops,
      title: "Laptops",
      colorbox: AppColor.jGMediumDark,
    ),
    AppCategoryIcon(
      icon: AppAssets.fragrances,
      title: "Fragrances",
      colorbox: AppColor.jGMedium,
    ),
    AppCategoryIcon(
      icon: AppAssets.skincare,
      title: "Skincare",
      colorbox: AppColor.jGMediumLight,
    ),
    AppCategoryIcon(
      icon: AppAssets.grocery,
      title: "Grocery",
      colorbox: AppColor.jGLight,
    ),
    AppCategoryIcon(
      icon: AppAssets.houseDecoration,
      title: "House\n Decoration",
      colorbox: AppColor.jGDark,
    ),
    AppCategoryIcon(
      icon: AppAssets.furnitures,
      title: "Furnitures",
      colorbox: AppColor.jGMediumDark,
    ),
    AppCategoryIcon(
      icon: AppAssets.tops,
      title: "Tops",
      colorbox: AppColor.jGMedium,
    ),
    AppCategoryIcon(
      icon: AppAssets.womensDresses,
      title: "Womens\n Dresses",
      colorbox: AppColor.jGMediumLight,
    ),
    AppCategoryIcon(
      icon: AppAssets.womensShoes,
      title: "Womens\n Shoes",
      colorbox: AppColor.jGLight,
    ),
    AppCategoryIcon(
      icon: AppAssets.mensShirt,
      title: "Mens\n Shirt",
      colorbox: AppColor.jGDark,
    ),
    AppCategoryIcon(
      icon: AppAssets.menShoes,
      title: "Men\n Shoes",
      colorbox: AppColor.jGMediumDark,
    ),
    AppCategoryIcon(
      icon: AppAssets.menWatches,
      title: "Men\n Watches",
      colorbox: AppColor.jGMedium,
    ),
    AppCategoryIcon(
      icon: AppAssets.womensWatches,
      title: "Womens\n Watches",
      colorbox: AppColor.jGMediumLight,
    ),
    AppCategoryIcon(
      icon: AppAssets.womensBags,
      title: "Bags",
      colorbox: AppColor.jGLight,
    ),
    AppCategoryIcon(
      icon: AppAssets.womensJewellery,
      title: "Jewellery",
      colorbox: AppColor.jGDark,
    ),
    AppCategoryIcon(
      icon: AppAssets.sunglasses,
      title: "Sunglasses",
      colorbox: AppColor.jGMediumDark,
    ),
    AppCategoryIcon(
      icon: AppAssets.automotive,
      title: "Automotive",
      colorbox: AppColor.jGMedium,
    ),
    AppCategoryIcon(
      icon: AppAssets.motorbike,
      title: "Motorbike",
      colorbox: AppColor.jGMediumLight,
    ),
    AppCategoryIcon(
      icon: AppAssets.lighting,
      title: "Lighting",
      colorbox: AppColor.jGLight,
    ),
  ];
}
