import 'package:store_app/feautres/auth/data/data_source/remote_data_source/user_remote/get_user_remote.dart';
import 'package:store_app/feautres/auth/domain/entity/user_entity.dart';
import 'package:store_app/feautres/auth/domain/repository/user_repository/get_user_repo.dart';

class GetUserRepoImpl implements GetUserRepo {
  final GetUserRemoteDataSourceImpl getUserRemoteDataSourceImpl;

  GetUserRepoImpl({required this.getUserRemoteDataSourceImpl});

  @override
  Stream<UserEntity> getUser(String userId) {
    return getUserRemoteDataSourceImpl.getUser(userId);
  }
}
