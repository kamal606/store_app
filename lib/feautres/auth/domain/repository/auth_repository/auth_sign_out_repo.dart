import 'package:dartz/dartz.dart';
import 'package:store_app/core/utils/failure.dart';

abstract class AuthSignOutUserRepo {
  Future<Either<Failure, Unit>> signOut();
}
