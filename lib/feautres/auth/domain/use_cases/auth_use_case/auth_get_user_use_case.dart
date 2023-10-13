import 'package:dartz/dartz.dart';
import 'package:store_app/core/utils/failure.dart';
import 'package:store_app/feautres/auth/domain/repository/auth_repository/auth_get_user_repo.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;

class AuthGetUserUseCase {
  final AuthGetUserRepo authGetUserRepo;
  AuthGetUserUseCase({required this.authGetUserRepo});

  Stream<Either<Failure, auth.User?>> call() {
    return authGetUserRepo.user;
  }
}
