import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:store_app/core/utils/failure.dart';
import 'package:store_app/feautres/auth/data/data_source/remote_data_source/user_remote/create_user_remote.dart';
import 'package:store_app/feautres/auth/data/models/user.dart';
import 'package:store_app/feautres/auth/domain/repository/user_repository/create_user_repo.dart';

class CreateUserRepoImpl implements CreateUserRepo {
  final CreateUserRemoteDataSourceImpl createUserRemoteDataSourceImpl;

  CreateUserRepoImpl({required this.createUserRemoteDataSourceImpl});

  @override
  Future<Either<Failure, Unit>> createUser(UserModel userModel) async {
    try {
      await createUserRemoteDataSourceImpl.createUser(userModel);
      return right(unit);
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
