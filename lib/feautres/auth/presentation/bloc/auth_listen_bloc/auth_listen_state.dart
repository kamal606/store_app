part of 'auth_listen_bloc.dart';

enum AuthStatus { guest, authenticated, unauthenticated }

class AuthListenState extends Equatable {
  final AuthStatus status;
  final auth.User? authUser;
  final UserEntity? userEntity;
  final String? errorMessage;
  const AuthListenState._({
    this.status = AuthStatus.guest,
    this.authUser,
    this.userEntity,
    this.errorMessage,
  });

  const AuthListenState.guest() : this._();

  const AuthListenState.authenticated({
    required auth.User authUser,
    required UserEntity userEntity,
  }) : this._(
          status: AuthStatus.authenticated,
          authUser: authUser,
          userEntity: userEntity,
        );

  const AuthListenState.unauthenticated()
      : this._(status: AuthStatus.unauthenticated);

  @override
  List<Object?> get props => [status, userEntity];
}
