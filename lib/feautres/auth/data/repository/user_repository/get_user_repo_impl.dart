import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:store_app/core/utils/failure.dart';
import 'package:store_app/feautres/auth/data/data_source/remote_data_source/user_remote/get_user_remote.dart';
import 'package:store_app/feautres/auth/domain/entity/user_entity.dart';
import 'package:store_app/feautres/auth/domain/repository/user_repository/get_user_repo.dart';

class GetUserRepoImpl implements GetUserRepo {
  final GetUserRemoteDataSourceImpl getUserRemoteDataSourceImpl;

  GetUserRepoImpl({required this.getUserRemoteDataSourceImpl});

  @override
  Either<Failure, Stream<UserEntity>> getUser(String userId) {
    try {
      final getUser = getUserRemoteDataSourceImpl.getUser(userId);
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
