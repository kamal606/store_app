import 'package:flutter/material.dart';

import '../../domain/entities/product_entity.dart';
import '../widgets/details_product/details_product_body.dart';

class DetailsProductView extends StatelessWidget {
  const DetailsProductView({super.key, required this.productEntity});
  final ProductEntity productEntity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailsProductViewBody(productEntity: productEntity),
    );
  }
}
