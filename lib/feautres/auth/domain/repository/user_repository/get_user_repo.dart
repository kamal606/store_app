import 'package:dartz/dartz.dart';
import 'package:store_app/feautres/auth/domain/entity/user_entity.dart';

import '../../../../../core/utils/failure.dart';

abstract class GetUserRepo {
  Either<Failure, Stream<UserEntity>> getUser(String userId);
}
