abstract class BaseState {
  String? email;
  String? password;

  BaseState(this.email, this.password);
}

class InitialState extends BaseState {
  InitialState(super.email, super.password);
}

class LoginStateSuccess extends BaseState {
  LoginStateSuccess(super.email, super.password);
}

class LoginStateFail extends BaseState {
  LoginStateFail(super.email, super.password);
}
