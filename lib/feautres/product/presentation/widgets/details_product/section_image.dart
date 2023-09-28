import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SectionImage extends StatelessWidget {
  const SectionImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2.5,
      child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: "https://i.dummyjson.com/data/products/1/thumbnail.jpg"),
    );
  }
}
