import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:store_app/core/utils/failure.dart';
import 'package:store_app/feautres/auth/domain/use_cases/auth_use_case/auth_sign_up_use_case.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthSignUpUseCase authSignUpUseCase;
  String email = "";
  String password = "";
  String confirmPassword = "";
  AuthBloc({required this.authSignUpUseCase}) : super(AuthInitial()) {
    on<AuthEvent>((event, emit) async {
      //=================== email changed event =================
      if (event is EmailChangedEvent) {
        email = event.email;
      }

      //=================== password changed event =================
      if (event is PasswordChangedEvent) {
        password = event.password;
      }

      //=================== confirm Password changed event =================
      if (event is ConfirmPasswordChangedEvent) {
        confirmPassword = event.confirmPassword;
      }

      //=================== sign up event =================
      if (event is AuthSignUpEvent) {
        emit(AuthLoading());
        //=============== check email or password empty and confirm password match ==========
        if (email.isEmpty) {
          return emit(
              const EmailFailure(errorEmail: "Email or password is empty"));
        }
        if (password.isEmpty) {
          return emit(const PasswordFailure(
              errorPassword: "Email or password is empty"));
        }
        if (password != confirmPassword) {
          return emit(const ConfirmPasswordFailure(
              errorConfirmPassword: "No match in password"));
        }

        //======================= method sign up form use case ==============
        final signUp = await authSignUpUseCase.call(email, password);

        //======================= Either fold to return left failure or right User? ==============
        signUp.fold((l) {
          if (l is EmailAuthFailure) {
            return emit(EmailFailure(errorEmail: l.message));
          }
          if (l is PasswordAuthFailure) {
            return emit(PasswordFailure(errorPassword: l.message));
          }
          if (l is FirebaseAuthFailure) {
            return emit(AuthFailure(errorAuth: l.message));
          }
        }, (r) {
          return emit(AuthSuccess());
        });
      }
    });
  }
}
