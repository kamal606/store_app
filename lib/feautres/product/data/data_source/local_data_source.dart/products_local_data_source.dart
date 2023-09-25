import 'package:hive/hive.dart';
import 'package:store_app/core/constant/hive_const.dart';

import '../../../domain/entities/product_entity.dart';

abstract class ProductsLocalDataSource {
  Future<Box> openBox();
  Future<void> addProducts(Box box, List<ProductEntity> product);
  List<ProductEntity> getProduct(Box box);
}

class ProductsLocalDataSourceImpl implements ProductsLocalDataSource {
  @override
  Future<Box> openBox() async {
    Box box = await Hive.openBox(AppHive.productsBox);
    return box;
  }

  @override
  Future<void> addProducts(Box box, List<ProductEntity> product) async {
    await box.addAll(product);
  }

  @override
  List<ProductEntity> getProduct(Box box) {
    return box.values.toList().cast();
  }
}
