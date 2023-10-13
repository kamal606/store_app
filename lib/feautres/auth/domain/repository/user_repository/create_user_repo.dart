import 'package:dartz/dartz.dart';
import 'package:store_app/core/utils/failure.dart';
import 'package:store_app/feautres/auth/domain/entity/user_entity.dart';

abstract class CreateUserRepo {
  Future<Either<Failure, Unit>> createUser(UserEntity userEntity);
}
