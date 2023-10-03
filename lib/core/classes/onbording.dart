import 'package:flutter/material.dart';
import 'package:store_app/core/classes/image_assets.dart';
import 'package:store_app/generated/l10n.dart';

class ClassOnBording {
  final String image;
  final String title;
  final String subTitle;

  ClassOnBording({
    required this.image,
    required this.title,
    required this.subTitle,
  });

  static List<ClassOnBording> onBordingList(BuildContext context) {
    return [
      ClassOnBording(
        image: AppAssets.womenClothing,
        title: S.of(context).onBordingDiscount,
        subTitle: S.of(context).onBordingSubTitle,
      ),
      ClassOnBording(
        image: AppAssets.laptop,
        title: S.of(context).onBordingTakeAdvantage,
        subTitle: S.of(context).onBordingSubTitle,
      ),
      ClassOnBording(
        image: AppAssets.shoes,
        title: S.of(context).onBordingAllTypes,
        subTitle: S.of(context).onBordingSubTitle,
      ),
    ];
  }
}
