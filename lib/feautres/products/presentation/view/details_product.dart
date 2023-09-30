import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/classes/icons.dart';
import '../../../../core/widgets/custom_appbar.dart';
import '../../domain/entities/product_entity.dart';
import '../widgets/details_product/details_product_body.dart';

class DetailsProductView extends StatelessWidget {
  const DetailsProductView({super.key, required this.productEntity});
  final ProductEntity productEntity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        iconAction: AppIcon.cart,
        iconLeading: AppIcon.arrowLeft,
        onPressedAction: () {},
        onPressedLeading: () {
          context.pop();
        },
      ),
      body: DetailsProductViewBody(productEntity: productEntity),
    );
  }
}
