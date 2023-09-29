import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/feautres/product/domain/entities/product_entity.dart';
import 'package:store_app/feautres/product/presentation/widgets/details_product/section_image.dart';

import 'body_container_discripe_product.dart';

class DetailsProductViewBody extends StatelessWidget {
  const DetailsProductViewBody({
    super.key,
    required this.productEntity,
  });
  final ProductEntity productEntity;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: SectionImage(
              productEntity: productEntity,
            )),
        Expanded(
            flex: 2,
            child: BodyContainerDiscripeProduct(
              productEntity: productEntity,
            )),
      ],
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      this.onPressedLeading,
      this.onPressedAction,
      this.iconLeading,
      this.iconAction});
  final void Function()? onPressedLeading;
  final void Function()? onPressedAction;
  final IconData? iconLeading;
  final IconData? iconAction;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        decoration: BoxDecoration(gradient: AppColor.linearGradientAppBar()),
      ),
      leading: IconButton(
        onPressed: onPressedLeading,
        icon: FaIcon(
          iconLeading,
          size: 22.h,
          color: AppColor.white,
        ),
      ),
      actions: [
        IconButton(
            onPressed: onPressedAction,
            icon: FaIcon(
              iconAction,
              size: 18.h,
              color: AppColor.white,
            )),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
