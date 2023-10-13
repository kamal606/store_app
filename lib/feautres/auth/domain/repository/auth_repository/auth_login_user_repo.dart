import 'package:dartz/dartz.dart';
import 'package:store_app/core/utils/failure.dart';

abstract class AuthLoginUserRepo {
  Future<Either<Failure, Unit>> logIn({
    required String email,
    required String password,
  });
}
