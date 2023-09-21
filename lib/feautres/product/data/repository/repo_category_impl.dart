import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:store_app/core/utils/failure.dart';
import 'package:store_app/feautres/product/data/data_source/remote_data_source/category_remote_data_source.dart';
import 'package:store_app/feautres/product/domain/repository/repo_category.dart';

import '../../domain/entities/category_entity.dart';

class CategoryRepoImpl implements CategoryRepo {
  final CategoryRemoteDataSourceImpl categoryRemoteDataSourceImpl;

  CategoryRepoImpl({required this.categoryRemoteDataSourceImpl});
  @override
  Future<Either<Failure, List<CategoryEntity>>> get() async {
    try {
      // category from local
      // final categoryLocal = categoryLocalDataSourceImpl.getCategory();
      // if (categoryLocal.isNotEmpty) {
      //   return right(categoryLocal);
      // }
      // category from api
      final categoryRemote = await categoryRemoteDataSourceImpl.getCategory();

      return right(categoryRemote);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }

      return left(ServerFailure(message: e.toString()));
    }
  }
}
