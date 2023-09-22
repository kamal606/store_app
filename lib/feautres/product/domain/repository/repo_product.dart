import 'package:dartz/dartz.dart';
import 'package:store_app/core/utils/failure.dart';
import 'package:store_app/feautres/product/domain/entities/product_entity.dart';

abstract class GetProductsOfCategoryRepo {
  Future<Either<Failure, List<ProductEntity>>> getProductsOfCategory();
}
