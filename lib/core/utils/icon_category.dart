import 'package:flutter/material.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/constant/image_assets.dart';

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
      colorbox: AppColor.success,
    ),
    AppCategoryIcon(
      icon: AppAssets.laptops,
      title: "Laptops",
      colorbox: AppColor.pink,
    ),
    AppCategoryIcon(
      icon: AppAssets.fragrances,
      title: "Fragrances",
      colorbox: AppColor.purple,
    ),
    AppCategoryIcon(
      icon: AppAssets.skincare,
      title: "Skincare",
      colorbox: AppColor.orange,
    ),
    AppCategoryIcon(
      icon: AppAssets.grocery,
      title: "Grocery",
      colorbox: AppColor.success,
    ),
    AppCategoryIcon(
      icon: AppAssets.houseDecoration,
      title: "House\n Decoration",
      colorbox: AppColor.pink,
    ),
    AppCategoryIcon(
      icon: AppAssets.furnitures,
      title: "Furnitures",
      colorbox: AppColor.purple,
    ),
    AppCategoryIcon(
      icon: AppAssets.tops,
      title: "Tops",
      colorbox: AppColor.orange,
    ),
    AppCategoryIcon(
      icon: AppAssets.womensDresses,
      title: "Womens\n Dresses",
      colorbox: AppColor.success,
    ),
    AppCategoryIcon(
      icon: AppAssets.womensShoes,
      title: "Womens\n Shoes",
      colorbox: AppColor.pink,
    ),
    AppCategoryIcon(
      icon: AppAssets.mensShirt,
      title: "Mens\n Shirt",
      colorbox: AppColor.purple,
    ),
    AppCategoryIcon(
      icon: AppAssets.menShoes,
      title: "Men\n Shoes",
      colorbox: AppColor.orange,
    ),
    AppCategoryIcon(
      icon: AppAssets.menWatches,
      title: "Men\n Watches",
      colorbox: AppColor.success,
    ),
    AppCategoryIcon(
      icon: AppAssets.womensWatches,
      title: "Womens\n Watches",
      colorbox: AppColor.pink,
    ),
    AppCategoryIcon(
      icon: AppAssets.womensBags,
      title: "Bags",
      colorbox: AppColor.purple,
    ),
    AppCategoryIcon(
      icon: AppAssets.womensJewellery,
      title: "Jewellery",
      colorbox: AppColor.orange,
    ),
    AppCategoryIcon(
      icon: AppAssets.sunglasses,
      title: "Sunglasses",
      colorbox: AppColor.success,
    ),
    AppCategoryIcon(
      icon: AppAssets.automotive,
      title: "Automotive",
      colorbox: AppColor.pink,
    ),
    AppCategoryIcon(
      icon: AppAssets.motorbike,
      title: "Motorbike",
      colorbox: AppColor.purple,
    ),
    AppCategoryIcon(
      icon: AppAssets.lighting,
      title: "Lighting",
      colorbox: AppColor.orange,
    ),
  ];
}
