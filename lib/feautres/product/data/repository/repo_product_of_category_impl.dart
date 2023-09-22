import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:store_app/core/utils/failure.dart';
import 'package:store_app/feautres/product/data/data_source/remote_data_source/product_of_category_remote_date_source.dart';
import 'package:store_app/feautres/product/domain/entities/product_entity.dart';
import 'package:store_app/feautres/product/domain/repository/repo_product.dart';

class GetProductOfCategoryRepoImpl extends GetProductsOfCategoryRepo {
  final ProductOfCategoryRemoteDataSourceImpl
      productOfCategoryRemoteDataSourceImpl;

  GetProductOfCategoryRepoImpl(
      {required this.productOfCategoryRemoteDataSourceImpl});
  @override
  Future<Either<Failure, List<ProductEntity>>> getProductsOfCategory() async {
    try {
      final productsRemote =
          await productOfCategoryRemoteDataSourceImpl.getProductOfCategory();
      return right(productsRemote);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(message: e.toString()));
    }
  }
}
