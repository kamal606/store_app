import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:store_app/core/utils/failure.dart';
import 'package:store_app/feautres/auth/data/data_source/remote_data_source/user_remote/delete_user_remote.dart';
import 'package:store_app/feautres/auth/domain/repository/user_repository/delete_user_repo.dart';

class DeleteUserRepoImpl implements DeleteUserRepo {
  final DeleteUserRemoteDataSourceImpl deleteUserRemoteDataSourceImpl;

  DeleteUserRepoImpl({required this.deleteUserRemoteDataSourceImpl});

  @override
  Future<Either<Failure, Unit>> deleteUser(String userId) async {
    try {
      await deleteUserRemoteDataSourceImpl.deleteUser(userId);
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
