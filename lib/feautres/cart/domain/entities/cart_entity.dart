import 'package:store_app/feautres/products/domain/entities/product_entity.dart';

class CartEntity {
  final List<ProductEntity> listProductEntity;

  const CartEntity({this.listProductEntity = const <ProductEntity>[]});
}
