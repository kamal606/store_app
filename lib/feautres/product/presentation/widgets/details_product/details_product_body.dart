import 'package:flutter/material.dart';
import 'package:store_app/feautres/product/presentation/widgets/details_product/body_container_discripe_product.dart';
import 'package:store_app/feautres/product/presentation/widgets/details_product/section_image.dart';

class DetailsProductViewBody extends StatelessWidget {
  const DetailsProductViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SectionImage(),
        BodyContainerDiscripeProduct(),
      ],
    );
  }
}
