import 'package:dartz/dartz.dart';
import 'package:store_app/core/use_case/no_param_use_case.dart';
import 'package:store_app/core/utils/failure.dart';
import 'package:store_app/feautres/product/domain/repository/repo_category.dart';

class GetCategoryUseCases extends UseCaseNoParam {
  final GetCategoryRepo getCategoryRepo;
  GetCategoryUseCases({required this.getCategoryRepo});

  @override
  Future<Either<Failure, dynamic>> call() async {
    return await getCategoryRepo.get();
  }
}
