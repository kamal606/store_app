import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:store_app/core/utils/failure.dart';
import 'package:store_app/feautres/auth/data/data_source/remote_data_source/auth_remote/auth_get_user_remote.dart';
import 'package:store_app/feautres/auth/domain/repository/auth_repository/auth_get_user_repo.dart';

class AuthGetUserRepoImpl implements AuthGetUserRepo {
  final AuthGetUserRemoteDataSource authGetUserRemoteDataSource;

  AuthGetUserRepoImpl({required this.authGetUserRemoteDataSource});

  @override
  Either<Failure, Stream<User?>> getUser() {
    try {
      final getUser = authGetUserRemoteDataSource.getUser();
      return right(getUser);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else if (e is FirebaseAuthException) {
        return left(FirebaseAuthExceptionHandler.fromFirebase(e));
      } else {
        return left(ServerFailure(message: e.toString()));
      }
    }
  }
}
