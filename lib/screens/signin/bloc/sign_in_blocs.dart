import '../../../app/imports/app_imports.dart';

class SignInBloc extends Bloc<SignInEvents, SignInState> {
  SignInBloc() : super(const SignInState()) {
    // email
    on<EmailEvent>(_emailEvent);
    // password
    on<PasswordEvent>(_passwordEvent);
  }

// email event logic
  void _emailEvent(EmailEvent event, Emitter<SignInState> emit) {
    emit(state.copyWith(email: event.email));
  }

  // password event logic
  void _passwordEvent(PasswordEvent event, Emitter<SignInState> emit) {
    emit(state.copyWith(password: event.password));
  }
}
