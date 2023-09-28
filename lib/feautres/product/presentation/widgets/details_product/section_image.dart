import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:store_app/feautres/product/domain/entities/product_entity.dart';

class SectionImage extends StatelessWidget {
  const SectionImage({super.key, required this.productEntity});
  final ProductEntity productEntity;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2.5,
      child: Hero(
          tag: productEntity.idProduct,
          child: CachedNetworkImage(
              fit: BoxFit.fill, imageUrl: productEntity.image)),
    );
  }
}
