import 'package:hive/hive.dart';

part 'product_entity.g.dart';

@HiveType(typeId: 1)
class ProductEntity {
  @HiveField(0)
  final int idProduct;
  @HiveField(1)
  final String titleProduct;
  @HiveField(2)
  final String descriptionProduct;
  @HiveField(3)
  final int priceProduct;
  @HiveField(4)
  final double discountPercentageProduct;
  @HiveField(5)
  final double ratingProduct;
  @HiveField(6)
  final int stockProduct;
  @HiveField(7)
  final String brandProduct;
  @HiveField(8)
  final String categoryProduct;
  @HiveField(9)
  final String image;

  // final List<String> subImage;

  ProductEntity({
    required this.idProduct,
    required this.titleProduct,
    required this.descriptionProduct,
    required this.priceProduct,
    required this.discountPercentageProduct,
    required this.ratingProduct,
    required this.stockProduct,
    required this.brandProduct,
    required this.categoryProduct,
    required this.image,
    // required this.subImage,
  });
}