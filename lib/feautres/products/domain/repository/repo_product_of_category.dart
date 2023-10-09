import 'package:dartz/dartz.dart';
import 'package:store_app/core/utils/failure.dart';
import 'package:store_app/feautres/products/domain/entities/product_entity.dart';

abstract class GetProductsOfCategoryRepo {
  Future<Either<Failure, List<ProductEntity>>> getProductOfCategory(
      String nameCategory);
}
