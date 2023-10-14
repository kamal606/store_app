// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_bloc.dart';

sealed class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object?> get props => [];
}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {}

class AuthFailure extends AuthState {
  final String errorAuth;

  const AuthFailure({required this.errorAuth});
}

class PasswordFailure extends AuthState {
  final String errorPassword;

  const PasswordFailure({required this.errorPassword});
}

class ConfirmPasswordFailure extends AuthState {
  final String errorConfirmPassword;

  const ConfirmPasswordFailure({required this.errorConfirmPassword});
}

class EmailFailure extends AuthState {
  final String errorEmail;

  const EmailFailure({required this.errorEmail});
}
