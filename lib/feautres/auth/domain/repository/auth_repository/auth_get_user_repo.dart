import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:store_app/core/utils/failure.dart';

abstract class AuthGetUserRepo {
  Stream<Either<Failure, auth.User?>> get user;
}
