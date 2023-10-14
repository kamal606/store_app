part of 'user_bloc.dart';

sealed class UserState extends Equatable {
  const UserState();

  @override
  List<Object?> get props => [];
}

class UserLoding extends UserState {}

class UserSuccess extends UserState {}

class UserFailure extends UserState {
  final String errorMessage;

  const UserFailure({required this.errorMessage});
  @override
  List<Object> get props => [errorMessage];
}
