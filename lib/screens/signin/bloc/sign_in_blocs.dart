import '../../../app/imports/app_imports.dart';

class SignInBloc extends Bloc<SignInEvents, SignInState> {
  SignInBloc() : super(const SignInState()) {
    // email
    on<EmailEvent>((event, state) => {});
    // password
    on<PasswordEvent>((event, state) {});
  }
}
