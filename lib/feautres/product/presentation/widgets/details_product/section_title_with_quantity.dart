import 'package:flutter/material.dart';
import 'package:store_app/feautres/product/presentation/widgets/details_product/section_increment_quantity.dart';
import 'package:store_app/feautres/product/presentation/widgets/details_product/section_rate_with_title.dart';

import '../../../domain/entities/product_entity.dart';

class SectionTitleWithQuantity extends StatelessWidget {
  const SectionTitleWithQuantity({super.key, required this.productEntity});
  final ProductEntity productEntity;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SectionRateWithTitle(productEntity: productEntity),
        SectionIncrementQuantity(productEntity: productEntity),
      ],
    );
  }
}
