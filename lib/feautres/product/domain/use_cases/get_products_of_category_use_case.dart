import 'package:dartz/dartz.dart';
import 'package:store_app/core/use_case/no_param_use_case.dart';
import 'package:store_app/core/utils/failure.dart';
import 'package:store_app/feautres/product/domain/entities/product_entity.dart';
import 'package:store_app/feautres/product/domain/repository/repo_product.dart';

class AllProductsUseCase extends UseCaseNoParam {
  final AllProductsRepo getProductsOfCategoryRepo;
  AllProductsUseCase({required this.getProductsOfCategoryRepo});

  @override
  Future<Either<Failure, List<ProductEntity>>> call() async {
    return await getProductsOfCategoryRepo.getAllProducts();
  }
}
