import 'package:dartz/dartz.dart';
import 'package:store_app/core/use_case/use_case.dart';
import 'package:store_app/core/utils/failure.dart';
import 'package:store_app/feautres/auth/domain/repository/user_repository/delete_user_repo.dart';

class DeleteUserUseCase extends UseCaseParam {
  final DeleteUserRepo deleteUserRepo;

  DeleteUserUseCase({required this.deleteUserRepo});
  @override
  Future<Either<Failure, Unit>> call(param) async {
    return await deleteUserRepo.deleteUser(param);
  }
}
