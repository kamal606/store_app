import 'package:dartz/dartz.dart';
import 'package:store_app/core/utils/failure.dart';
import 'package:store_app/feautres/product/domain/entities/category_entity.dart';

abstract class GetCategoryRepo {
  // in api we have List of names category just.
  Future<Either<Failure, List<CategoryEntity>>> get();
}
