import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/generated/l10n.dart';
import '../../../../../core/fonts/app_font.dart';
import '../../../../../core/widgets/custom_elvated_button.dart';

import '../../../domain/entities/product_entity.dart';

class SectionPriceAndButtonCart extends StatelessWidget {
  const SectionPriceAndButtonCart({super.key, required this.productEntity});
  final ProductEntity productEntity;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).totalPrice,
              style: AppFonts.regular_9,
            ),
            Text(
              "\$${productEntity.priceProduct.toStringAsFixed(2)}",
              style: AppFonts.bold_18,
            ),
          ],
        ),
        SizedBox(
          width: 140.h,
          height: 40.h,
          child: CustomElvatedButton(
            onPressed: () {},
            title: S.of(context).addToCart,
          ),
        )
      ],
    );
  }
}
