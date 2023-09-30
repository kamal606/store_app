import 'package:flutter/material.dart';

import '../../../domain/entities/product_entity.dart';
import 'body_container_discripe_product.dart';
import 'section_image.dart';

class DetailsProductViewBody extends StatelessWidget {
  const DetailsProductViewBody({
    super.key,
    required this.productEntity,
  });
  final ProductEntity productEntity;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              SectionImage(
                productEntity: productEntity,
              ),
              Expanded(
                  child: BodyContainerDiscripeProduct(
                productEntity: productEntity,
              )),
            ],
          ),
        )
      ],
    );
  }
}
