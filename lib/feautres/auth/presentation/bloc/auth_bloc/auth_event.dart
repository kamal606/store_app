part of 'auth_bloc.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class EmailChangedEvent extends AuthEvent {
  final String email;

  const EmailChangedEvent({required this.email});
  @override
  List<Object> get props => [email];
}

class PasswordChangedEvent extends AuthEvent {
  final String password;
  const PasswordChangedEvent({required this.password});
  @override
  List<Object> get props => [password];
}

class ConfirmPasswordChangedEvent extends AuthEvent {
  final String confirmPassword;
  const ConfirmPasswordChangedEvent({required this.confirmPassword});
  @override
  List<Object> get props => [confirmPassword];
}

class AuthSignUpEvent extends AuthEvent {}
