// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_bloc.dart';

sealed class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object?> get props => [];
}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {
  final auth.User? authUser;

  const AuthSuccess({required this.authUser});
  @override
  List<Object?> get props => [authUser];
}

class AuthFailure extends AuthState {
  final String errorAuth;

  const AuthFailure({required this.errorAuth});
  @override
  List<Object?> get props => [errorAuth];
}

class PasswordFailure extends AuthState {
  final String errorPassword;

  const PasswordFailure({required this.errorPassword});
  @override
  List<Object?> get props => [errorPassword];
}

class ConfirmPasswordFailure extends AuthState {
  final String errorConfirmPassword;

  const ConfirmPasswordFailure({required this.errorConfirmPassword});
  @override
  List<Object?> get props => [errorConfirmPassword];
}

class EmailFailure extends AuthState {
  final String errorEmail;

  const EmailFailure({required this.errorEmail});
  @override
  List<Object?> get props => [errorEmail];
}
