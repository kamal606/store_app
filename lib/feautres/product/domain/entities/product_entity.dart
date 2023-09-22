class ProductEntity {
  final int idProduct;
  final String titleProduct;
  final String descriptionProduct;
  final int priceProduct;
  final double discountPercentageProduct;
  final double ratingProduct;
  final int stockProduct;
  final String brandProduct;
  final String categoryProduct;
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
