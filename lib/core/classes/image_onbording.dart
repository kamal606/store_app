import 'package:store_app/core/classes/image_assets.dart';

class ClassOnBording {
  final String image;
  final String title;
  final String subTitle;

  ClassOnBording({
    required this.image,
    required this.title,
    required this.subTitle,
  });

  static List<ClassOnBording> onBordingList = [
    ClassOnBording(
      image: AppAssets.womenClothing,
      title: "20% Discount\nNew Arrival Products",
      subTitle:
          "publish up your selfies to make your self more beuatiful with this app",
    ),
    ClassOnBording(
      image: AppAssets.laptop,
      title: "Take Advantage\nOf The Offer Shopping",
      subTitle:
          "publish up your selfies to make your self more beuatiful with this app",
    ),
    ClassOnBording(
      image: AppAssets.shoes,
      title: "All Types Offers\nWithin Your Reach",
      subTitle:
          "publish up your selfies to make your self more beuatiful with this app",
    ),
  ];
}
