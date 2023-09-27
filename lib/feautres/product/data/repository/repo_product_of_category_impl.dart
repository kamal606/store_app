import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:store_app/core/constant/messages.dart';
import 'package:store_app/core/utils/failure.dart';
import 'package:store_app/feautres/product/data/data_source/local_data_source.dart/products_local_data_source.dart';
import 'package:store_app/feautres/product/data/data_source/remote_data_source/product_of_category_remote_date_source.dart';
import 'package:store_app/feautres/product/domain/entities/product_entity.dart';
import 'package:store_app/feautres/product/domain/repository/repo_product.dart';

class GetProductOfCategoryRepoImpl extends GetProductsOfCategoryRepo {
  final ProductOfCategoryRemoteDataSourceImpl
      productOfCategoryRemoteDataSourceImpl;
  final ProductsLocalDataSourceImpl productsLocalDataSourceImpl;

  GetProductOfCategoryRepoImpl(
      {required this.productOfCategoryRemoteDataSourceImpl,
      required this.productsLocalDataSourceImpl});
  @override
  Future<Either<Failure, List<ProductEntity>>> getProductsOfCategory() async {
    List<ProductEntity> productsLocal = await getProductsFromLocal();
    if (productsLocal.isNotEmpty) {
      return right(productsLocal);
    }

    if (await InternetConnectionChecker().hasConnection) {
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
    } else {
      return left(NetworkFailure(message: AppMessages.noInternet));
    }
  }

  Future<List<ProductEntity>> getProductsFromLocal() async {
    Box box = await productsLocalDataSourceImpl.openBox();
    final products = productsLocalDataSourceImpl.getProduct(box);
    return products;
  }
}
