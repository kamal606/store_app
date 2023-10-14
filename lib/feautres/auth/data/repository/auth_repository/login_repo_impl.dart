import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:store_app/core/utils/failure.dart';
import 'package:store_app/feautres/auth/data/data_source/remote_data_source/auth_remote/auth_login_remote.dart';
import 'package:store_app/feautres/auth/domain/repository/auth_repository/auth_login_user_repo.dart';

class AuthLoginUserRepoImpl implements AuthLoginUserRepo {
  final AuthLogInRemoteDataSourceImpl authLogInRemoteDataSourceImpl;

  AuthLoginUserRepoImpl({required this.authLogInRemoteDataSourceImpl});

  @override
  Future<Either<Failure, Unit>> logIn(
      {required String email, required String password}) async {
    try {
      await authLogInRemoteDataSourceImpl.login(
          email: email, password: password);
      return right(unit);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else if (e is FirebaseAuthException) {
        return left(FirebaseAuthFailure.fromFirebase(e));
      } else {
        return left(ServerFailure(message: e.toString()));
      }
    }
  }
}
