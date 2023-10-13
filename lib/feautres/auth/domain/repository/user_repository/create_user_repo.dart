import 'package:dartz/dartz.dart';
import 'package:store_app/core/utils/failure.dart';
import 'package:store_app/feautres/auth/data/models/user.dart';

abstract class CreateUserRepo {
  Future<Either<Failure, Unit>> createUser(UserModel userModel);
}
