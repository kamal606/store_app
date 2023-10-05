import 'package:flutter/material.dart';
import 'package:store_app/feautres/favorite/presentation/widget/section_card_product.dart';

class SectionListProduct extends StatelessWidget {
  const SectionListProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, i) {
            return const CustomCardWishlist();
          }),
    );
  }
}
