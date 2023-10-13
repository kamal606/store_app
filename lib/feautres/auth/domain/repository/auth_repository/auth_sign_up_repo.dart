import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:store_app/core/utils/failure.dart';

abstract class AuthSignUpUserRepo {
  Future<Either<Failure, auth.User?>> signUp({
    required String email,
    required String password,
  });
}
