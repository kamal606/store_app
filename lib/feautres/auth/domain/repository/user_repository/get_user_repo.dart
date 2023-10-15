import '../../entity/user_entity.dart';

abstract class GetUserRepo {
  Stream<UserEntity> getUser(String userId);
}
