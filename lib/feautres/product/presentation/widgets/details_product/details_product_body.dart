import 'package:flutter/material.dart';
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
