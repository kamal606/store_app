import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/core/classes/icons.dart';
import 'package:store_app/feautres/product/domain/entities/product_entity.dart';

import '../../../../../core/color/app_color.dart';

class SectionImage extends StatelessWidget {
  const SectionImage({super.key, required this.productEntity});
  final ProductEntity productEntity;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 2.5,
          child: Hero(
              tag: productEntity.idProduct,
              child: CachedNetworkImage(
                  fit: BoxFit.fill, imageUrl: productEntity.image)),
        ),
        Padding(
          padding: EdgeInsets.only(right: 20.h, bottom: 20.h),
          child: CircleAvatar(
            backgroundColor: AppColor.white,
            child: IconButton(
                onPressed: () {},
                icon: FaIcon(
                  AppIcon.favorite,
                  size: 18.h,
                  color: AppColor.blacK,
                )),
          ),
        ),
      ],
    );
  }
}
