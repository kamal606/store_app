import 'package:dartz/dartz.dart';
import 'package:store_app/feautres/auth/domain/entity/user_entity.dart';

import '../../../../../core/utils/failure.dart';

abstract class GetUserRepo {
  Stream<Either<Failure, UserEntity>> getUser(String userId);
}
