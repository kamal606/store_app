import 'package:dartz/dartz.dart';

import '../../../../../core/use_case/use_case.dart';
import '../../../../../core/utils/failure.dart';
import '../../repository/user_repository/delete_user_repo.dart';

class DeleteUserUseCase extends UseCaseParam {
  final DeleteUserRepo deleteUserRepo;

  DeleteUserUseCase({required this.deleteUserRepo});
  @override
  Future<Either<Failure, Unit>> call(param) async {
    return await deleteUserRepo.deleteUser(param);
  }
}
