import 'package:store_app/feautres/products/domain/entities/product_entity.dart';

class FavoriteEntity {
  final List<ProductEntity> listProductEntity;

  const FavoriteEntity({this.listProductEntity = const <ProductEntity>[]});
}
