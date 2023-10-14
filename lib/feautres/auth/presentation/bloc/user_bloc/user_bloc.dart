import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:store_app/feautres/auth/data/models/user.dart';

import 'package:store_app/feautres/auth/domain/use_cases/user_use_case/create_user_use_case.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final CreateUserUseCase createUserUseCase;

  UserBloc({
    required this.createUserUseCase,
  }) : super(UserLoding()) {
    on<UserEvent>((event, emit) async {
      if (event is CreateUserEvent) {
        emit(UserLoding());
        final createUser = await createUserUseCase.call(event.userModel);
        createUser.fold((l) {
          emit(UserFailure(errorMessage: l.message));
        }, (r) {
          emit(UserSuccess());
        });
      }
    });
  }
}
