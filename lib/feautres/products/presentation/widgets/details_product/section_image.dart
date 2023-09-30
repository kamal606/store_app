import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/classes/icons.dart';
import '../../../../../core/color/app_color.dart';

import '../../../domain/entities/product_entity.dart';

class SectionImage extends StatelessWidget {
  const SectionImage({super.key, required this.productEntity});
  final ProductEntity productEntity;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 3.5,
          width: MediaQuery.of(context).size.width,
          child: Hero(
              tag: productEntity.idProduct,
              child: CachedNetworkImage(
                  fit: BoxFit.fill, imageUrl: productEntity.image)),
        ),
        Padding(
          padding: EdgeInsets.only(right: 20.h, bottom: 20.h),
          child: CircleAvatar(
            backgroundColor: AppColor.lightGrey,
            child: IconButton(
                onPressed: () {},
                icon: FaIcon(
                  AppIcon.favorite,
                  color: AppColor.darkTheme,
                  size: 18.h,
                )),
          ),
        ),
      ],
    );
  }
}
