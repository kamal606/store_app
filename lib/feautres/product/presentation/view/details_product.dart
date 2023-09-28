import 'package:flutter/material.dart';

import '../widgets/details_product/details_product_body.dart';

class DetailsProductView extends StatelessWidget {
  const DetailsProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DetailsProductViewBody(),
    );
  }
}
