import 'package:dartz/dartz.dart';
import 'package:store_app/core/utils/failure.dart';
import 'package:store_app/feautres/auth/domain/repository/auth_repository/auth_login_user_repo.dart';

class AuthLogInUseCase {
  final AuthLoginUserRepo loginUserRepo;

  AuthLogInUseCase({required this.loginUserRepo});

  Future<Either<Failure, Unit>> call(String email, String password) async {
    return await loginUserRepo.logIn(email: email, password: password);
  }
}
