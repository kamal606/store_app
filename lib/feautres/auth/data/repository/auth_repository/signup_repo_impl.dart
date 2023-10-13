import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:store_app/core/utils/failure.dart';
import 'package:store_app/feautres/auth/data/data_source/remote_data_source/auth_remote/auth_sign_up_remote.dart';
import 'package:store_app/feautres/auth/domain/repository/auth_repository/auth_sign_up_repo.dart';

class AuthSignUpUserRepoImpl implements AuthSignUpUserRepo {
  final AuthSignUpRemoteDataSourceImpl authSignUpRemoteDataSourceImpl;

  AuthSignUpUserRepoImpl({required this.authSignUpRemoteDataSourceImpl});
  @override
  Future<Either<Failure, User?>> signUp(
      {required String email, required String password}) async {
    try {
      final user = await authSignUpRemoteDataSourceImpl.signUp(
          email: email, password: password);
      return right(user);
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
