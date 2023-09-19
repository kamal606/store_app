import 'package:dartz/dartz.dart';
import 'package:store_app/core/utils/failure.dart';
import 'package:store_app/feautres/product/domain/entities/category_entity.dart';
import 'package:store_app/feautres/product/domain/repository/repo_category.dart';

class CategoryUseCases {
  final CategoryRepo categoryRepo;

  CategoryUseCases({required this.categoryRepo});
  Future<Either<Failure, List<CategoryEntity>>> getCategory() {
    return categoryRepo.getCategory();
  }
}
