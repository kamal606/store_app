import 'package:dartz/dartz.dart';
import 'package:store_app/core/utils/failure.dart';

abstract class DeleteUserRepo {
  Future<Either<Failure, Unit>> deleteUser(String userId);
}
