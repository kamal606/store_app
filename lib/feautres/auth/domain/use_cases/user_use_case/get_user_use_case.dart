import 'package:dartz/dartz.dart';
import 'package:store_app/core/utils/failure.dart';
import 'package:store_app/feautres/auth/domain/entity/user_entity.dart';
import 'package:store_app/feautres/auth/domain/repository/user_repository/get_user_repo.dart';

class GetUserUseCase {
  final GetUserRepo getUserRepo;

  GetUserUseCase({required this.getUserRepo});
  Stream<Either<Failure, UserEntity>> call(String userId) {
    return getUserRepo.getUser(userId);
  }
}
