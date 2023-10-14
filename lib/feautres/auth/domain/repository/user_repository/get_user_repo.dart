import 'package:store_app/feautres/auth/domain/entity/user_entity.dart';

abstract class GetUserRepo {
  Stream<UserEntity> getUser(String userId);
}
