part of 'auth_listen_bloc.dart';

enum AuthStatus { authenticated, unauthenticated }

class AuthListenState extends Equatable {
  final AuthStatus status;
  final auth.User? authUser;
  final UserEntity? userEntity;

  const AuthListenState._({
    this.status = AuthStatus.unauthenticated,
    this.authUser,
    this.userEntity,
  });

  const AuthListenState.authenticated({
    required auth.User authUser,
    required UserEntity userEntity,
  }) : this._(
          status: AuthStatus.authenticated,
          authUser: authUser,
          userEntity: userEntity,
        );

  const AuthListenState.unauthenticated() : this._();

  @override
  List<Object?> get props => [status, userEntity];
}
