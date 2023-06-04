import 'package:facebook/bloc/event.dart';
import 'package:facebook/bloc/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../repos/account_repo.dart';

String? email;
String? password;

class FaceBookBloc extends Bloc<BaseEvent, BaseState> {
  FaceBookBloc()
      : super(
          InitialState(email, password),
        ) {
    on<OnLoginButtonPressed>(_onLoginButtonPressedEvent);
  }

  List<Account> account = [
    Account(
      'user01@gmail.com',
      '123',
    )
  ];

  void _onLoginButtonPressedEvent(
      OnLoginButtonPressed event, Emitter<BaseState> emit) {
    for (int i = 0; i < account.length; i++) {
      if (state.email == account[i].email &&
          state.password == account[i].password) {
        emit(
          LoginStateSuccess(
            state.email,
            state.password,
          ),
        );
      } else {
        emit(
          LoginStateFail(
            state.email,
            state.password,
          ),
        );
      }
    }
  }
}
