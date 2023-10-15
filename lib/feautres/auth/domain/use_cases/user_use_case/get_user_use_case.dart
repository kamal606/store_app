import '../../entity/user_entity.dart';
import '../../repository/user_repository/get_user_repo.dart';

class GetUserUseCase {
  final GetUserRepo getUserRepo;

  GetUserUseCase({required this.getUserRepo});
  Stream<UserEntity> call(String userId) {
    return getUserRepo.getUser(userId);
  }
}
