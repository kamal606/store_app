import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/widgets/custom_increment_quantity.dart';
import 'package:store_app/generated/l10n.dart';
import '../../../../../core/fonts/app_font.dart';
import '../../../domain/entities/product_entity.dart';

class SectionIncrementQuantity extends StatelessWidget {
  const SectionIncrementQuantity({super.key, required this.productEntity});
  final ProductEntity productEntity;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomIncrementQuantity(),
        SizedBox(
          height: 10.h,
        ),
        Text(
          "${S.of(context).stock} : ${productEntity.stockProduct}",
          style: AppFonts.bold_13,
        ),
      ],
    );
  }
}
