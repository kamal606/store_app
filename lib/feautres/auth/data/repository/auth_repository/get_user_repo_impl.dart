import 'package:firebase_auth/firebase_auth.dart';
import 'package:store_app/feautres/auth/data/data_source/remote_data_source/auth_remote/auth_get_user_remote.dart';
import 'package:store_app/feautres/auth/domain/repository/auth_repository/auth_get_user_repo.dart';

class AuthGetUserRepoImpl implements AuthGetUserRepo {
  final AuthGetUserRemoteDataSource authGetUserRemoteDataSource;

  AuthGetUserRepoImpl({required this.authGetUserRemoteDataSource});

  @override
  Stream<User?> get user => authGetUserRemoteDataSource.getUser();
}
