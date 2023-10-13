import 'package:dartz/dartz.dart';
import 'package:store_app/core/utils/failure.dart';
import 'package:store_app/feautres/auth/domain/repository/auth_repository/auth_sign_out_repo.dart';

class AuthSignOutUseCase {
  final AuthSignOutUserRepo signOutUserRepo;

  AuthSignOutUseCase({required this.signOutUserRepo});

  Future<Either<Failure, Unit>> call() async {
    return await signOutUserRepo.signOut();
  }
}
