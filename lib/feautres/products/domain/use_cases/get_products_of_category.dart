import 'package:dartz/dartz.dart';
import 'package:store_app/core/use_case/use_case.dart';
import 'package:store_app/core/utils/failure.dart';
import 'package:store_app/feautres/products/domain/entities/product_entity.dart';
import 'package:store_app/feautres/products/domain/repository/repo_product_of_category.dart';

class GetProductsOfCategoryUseCase extends UseCaseParam {
  final GetProductsOfCategoryRepo getProductsOfCategoryRepo;

  GetProductsOfCategoryUseCase({required this.getProductsOfCategoryRepo});
  @override
  Future<Either<Failure, List<ProductEntity>>> call(param) async {
    return await getProductsOfCategoryRepo.getProductOfCategory(param);
  }
}
